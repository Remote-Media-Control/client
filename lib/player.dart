import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:rmc_client/generated/proto.pb.dart' as pb;
import 'package:rmc_client/client.dart';

class PlayerModel extends ChangeNotifier {
  var server = "http://127.0.0.1:50051";

  var songName = "unknown";
  var artistName = "unknown";
  var isPlaying = false;

  void updateState() async {
    final data = await getInfo(server);
    songName = data.songName;
    artistName = data.artistName;
    if (data.status == pb.PlayerStatus.PLAYING) {
      isPlaying = true;
    } else if (data.status == pb.PlayerStatus.PAUSED) {
      isPlaying = false;
    }
    notifyListeners();
  }

  void previous() async {
    await sendRunReq(
        server,
        pb.RunRequest(
          key: pb.Key.PREV,
        ));
    updateState();
  }

  void next() async {
    await sendRunReq(
        server,
        pb.RunRequest(
          key: pb.Key.NEXT,
        ));
    updateState();
  }

  void play() async {
    await sendRunReq(
        server,
        pb.RunRequest(
          key: pb.Key.PLAY,
        ));
    updateState();
  }

  void pause() async {
    await sendRunReq(
        server,
        pb.RunRequest(
          key: pb.Key.PAUSE,
        ));
    updateState();
  }
}

class PlayerView extends StatelessWidget {
  const PlayerView({Key? key}) : super(key: key);

  static const buttonSpace = 20.0;

  @override
  Widget build(BuildContext context) {
    var prevButton = IconButton(
      icon: const Icon(Icons.skip_previous),
      tooltip: 'Previous',
      onPressed: Provider.of<PlayerModel>(context, listen: false).previous,
    );

    var playButton = IconButton(
      icon: const Icon(Icons.play_arrow),
      tooltip: 'Play',
      onPressed: Provider.of<PlayerModel>(context, listen: false).play,
    );

    var pauseButton = IconButton(
      icon: const Icon(Icons.pause),
      tooltip: 'Pause',
      onPressed: Provider.of<PlayerModel>(context, listen: false).pause,
    );

    var nextButton = IconButton(
      icon: const Icon(Icons.skip_next),
      tooltip: 'Next',
      onPressed: Provider.of<PlayerModel>(context, listen: false).next,
    );

    return Consumer<PlayerModel>(builder: (context, player, child) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              player.songName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              player.artistName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                prevButton,
                const SizedBox(width: buttonSpace),
                player.isPlaying ? pauseButton : playButton,
                const SizedBox(width: buttonSpace),
                nextButton
              ],
            ),
          ],
        ),
      );
    });
  }
}
