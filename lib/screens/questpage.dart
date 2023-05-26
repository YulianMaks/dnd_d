import 'package:flutter/material.dart';

import '../models/quest.dart';
import '../quests/quest_list.dart';
import '../quests/new_quest.dart';

class QuestPage extends StatefulWidget {
  const QuestPage({super.key});

  @override
  State<QuestPage> createState() => _QuestPageState();
}

class _QuestPageState extends State<QuestPage> {
  final List<Quest> _addedQuest = [
    Quest(name: "Go to gym", date: DateTime.now(), stat: Stat.str),
    Quest(name: "Jogging", date: DateTime.now(), stat: Stat.dex),
  ];

  // void _addNewQuest(String name, Stat stat) {
  //   final newQuest = Quest(name: name, date: DateTime.now(), stat: stat);

  //   setState(() {
  //     _addedQuest.add(newQuest);
  //   });
  // }

  //TODO modal screens
  void modalQuestFields(BuildContext ctx) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          // return GestureDetector(
          //     onTap: () {},
          //     behavior: HitTestBehavior.opaque,
          //     child: Text('loh'));
          return NewQuest();
        });
  }

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
        body: QuestList(quests: _addedQuest),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print('Add quest button');
            modalQuestFields(context);
          },
          // child: Icon(Icons.add),
          icon: Icon(Icons.add),
          label: Text('Add Quest'),
        ),
      ),
    );
  }
}
