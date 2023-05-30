import 'package:flutter/material.dart';

import '../models/quest.dart';
import '../quests/quest_list.dart';
import '../quests/new_quest.dart';

class QuestPage extends StatefulWidget {
  const QuestPage(
      {super.key, required this.addedQuest, required this.deleteQuest});

  final List<Quest> addedQuest;
  final Function deleteQuest;

  @override
  State<QuestPage> createState() => _QuestPageState();
}

class _QuestPageState extends State<QuestPage> {
  // final List<Quest> _addedQuest = [
  //   // Quest(name: "Go to gym", date: DateTime.now(), stat: Stat.str),
  //   // Quest(name: "Jogging", date: DateTime.now(), stat: Stat.dex),
  // ];

  // void _addNewQuest(Quest quest) {
  //   setState(() {
  //     _addedQuest.add(quest);
  //   });
  // }

  // void _deleteQuest(Quest quest) {
  //   setState(() {
  //     _addedQuest.remove(quest);
  //     print(quest.stat);
  //   });
  // }

  // void modalQuestFields(BuildContext ctx) {
  //   showModalBottomSheet(
  //       isScrollControlled: true,
  //       context: context,
  //       builder: (ctx) {
  //         // return GestureDetector(
  //         //     onTap: () {},
  //         //     behavior: HitTestBehavior.opaque,
  //         //     child: Text('loh'));
  //         return NewQuest(onAddNewQuest: _addNewQuest);
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    Widget questPageContent = const Center(
      child: Text('У вас поки немає квестів. Додайте декілька!'),
    );

    // if (widget.addedQuest.isNotEmpty) {
    //   questPageContent = QuestList(
    //       quests: widget.addedQuest, onDeleteQuest: widget.deleteQuest);
    // }

    return questPageContent;
  }
}
