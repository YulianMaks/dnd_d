import 'package:flutter/material.dart';

import '../models/quest.dart';
import '../quests/quest_item.dart';
import '../screens/questpage.dart';

class QuestList extends StatelessWidget {
  const QuestList({
    required this.quests,
    super.key,
    required this.onDeleteQuest,
  });

  final List<Quest> quests;
  final void Function(Quest quest) onDeleteQuest;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quests.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(quests[index]),
        onDismissed: (direction) {
          onDeleteQuest(quests[index]);
        },
        child: QuestItem(quest: quests[index]),
      ),
    );
  }
}
