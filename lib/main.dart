import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:rmc_client/player.dart';
import 'package:rmc_client/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PlayerModel(),
      child: const MaterialApp(
        title: 'Remote Media Control',
        home: RootRoute(),
      ),
    );
  }
}

class RootRoute extends StatelessWidget {
  const RootRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Settings menu',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsRoute()),
                );
              },
            ),
            SizedBox(
              child: Text(
                'Remote Media Control',
                style: Theme.of(context).primaryTextTheme.headline6,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.refresh),
              tooltip: 'Refresh',
              onPressed:
                  Provider.of<PlayerModel>(context, listen: false).updateState,
            ),
          ],
        ),
      ),
      body: const PlayerView(),
    );
  }
}

class SettingsRoute extends StatelessWidget {
  const SettingsRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: Theme.of(context).primaryTextTheme.headline6,
        ),
      ),
      body: const SettingsView(),
    );
  }
}
