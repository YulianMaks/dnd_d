import 'package:flutter/material.dart';

import '../models/quest.dart';
import '../quests/quest_item.dart';
import '../screens/questpage.dart';

class QuestList extends StatelessWidget {
  const QuestList({
    required this.quests,
    super.key,
    required this.onDeleteQuest,
    required this.onCompleteQuest,
  });

  final List<Quest> quests;
  final void Function(Quest quest) onDeleteQuest;
  final void Function(Quest quest) onCompleteQuest;
  // final Function onCompleteQuest;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: quests.length,
        itemBuilder: (ctx, index) => Dismissible(
          key: ValueKey(quests[index]),
          onDismissed: (direction) {
            onDeleteQuest(quests[index]);
          },
          child:
              QuestItem(quest: quests[index], completeQuest: onCompleteQuest),
        ),
      ),
    );
  }
}
