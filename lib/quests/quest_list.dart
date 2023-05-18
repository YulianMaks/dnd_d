import 'package:flutter/material.dart';

import '../models/quest.dart';
import '../quests/quest_item.dart';

class QuestList extends StatelessWidget {
  const QuestList({required this.quests, super.key});

  final List<Quest> quests;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quests.length,
      itemBuilder: (ctx, index) => QuestItem(quest: quests[index]),
    );
  }
}
