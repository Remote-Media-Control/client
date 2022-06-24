import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:rmc_client/player.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  List<String> serverList = <String>[];
  String selectedServerValue = "";

  int _selectedServerId = 0;

  final textController = TextEditingController();

  Future<String> loadSettings(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();

    final servers = prefs.getString("servers") ?? '["http://127.0.0.1:50051"]';
    _selectedServerId = prefs.getInt("server_index") ?? 0;

    serverList = List<String>.from(jsonDecode(servers));
    selectedServerValue = serverList[_selectedServerId];

    return selectedServerValue;
  }

  void addServer(String server) async {
    final prefs = await SharedPreferences.getInstance();

    serverList.add(server);
    await prefs.setString("servers", jsonEncode(serverList));
    await prefs.setInt("server_index", serverList.indexOf(selectedServerValue));

    setState(() {});
  }

  void removeServer(int index) async {
    final prefs = await SharedPreferences.getInstance();

    serverList.removeAt(index);

    final selectedIndex = serverList.indexOf(selectedServerValue);
    await prefs.setString("servers", jsonEncode(serverList));
    await prefs.setInt("server_index", selectedIndex != -1 ? selectedIndex : 0);

    setState(() {});
  }

  void selectServer(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt("server_index", index);

    setState(() {});
  }

  Widget buildList(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: serverList.length,
      itemBuilder: (context, index) {
        final item = serverList[index];

        return ListTile(
          selectedTileColor: Colors.blue[200],
          title: Text(
            item,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: () {
              removeServer(index);
            },
          ),
          selected: index == _selectedServerId,
          onTap: () {
            selectServer(index);
          },
        );
      },
    );
  }

  Widget buildAll(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: TextField(
                  controller: textController,
                  decoration: const InputDecoration(
                    hintText: 'Enter new addres?',
                    border: OutlineInputBorder(),
                  ),
                  onSubmitted: (value) {
                    addServer(value);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 8.0),
              child: Ink(
                decoration: const ShapeDecoration(
                  color: Colors.lightBlue,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.add),
                  color: Colors.white,
                  onPressed: () {
                    addServer(textController.text);
                  },
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Center(
            child: buildList(context), // Text('Server loaded: $server'),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadSettings(context),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasError) {
          final error = snapshot.error!;
          return Center(
            child: Text('Error... $error'),
          );
        } else if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          final server = snapshot.data!;
          Provider.of<PlayerModel>(context, listen: false).server = server;
          return buildAll(context);
        } else {
          return const Center(
            child: Text('WTF'),
          );
        }
      },
    );
  }
}
