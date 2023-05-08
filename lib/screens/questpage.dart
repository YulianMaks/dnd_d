import 'package:flutter/material.dart';

class QuestPage extends StatefulWidget {
  const QuestPage({super.key});

  @override
  State<QuestPage> createState() => _QuestPageState();
}

class _QuestPageState extends State<QuestPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quests"),
          actions: [
            IconButton(
              onPressed: () {
                print('settings key pressed');
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: const Text('Quest Page'),
      ),
    );
  }
}
