import 'package:flutter/material.dart';

import '../models/quest.dart';

class QuestItem extends StatelessWidget {
  const QuestItem(
      {super.key, required this.quest, required this.completeQuest});
  final Quest quest;
  final Function(Quest quest) completeQuest;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 26),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    print('complete quest');
                    completeQuest(quest);
                  },
                  icon: Icon(Icons.done_sharp)),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      quest.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(nameOfStat[quest.stat].toString()),
                        const Spacer(),
                        Text(
                          quest.formattedDate,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // const Spacer(),
              SizedBox(
                width: 3,
              ),
              // IconButton(
              //     onPressed: () {
              //       print('delete quest');
              //     },
              //     icon: Icon(Icons.delete)),
            ],
          )),
    );
  }
}
