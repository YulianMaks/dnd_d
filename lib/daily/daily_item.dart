import 'package:flutter/material.dart';

import '../models/daily.dart';

class DailyItem extends StatelessWidget {
  const DailyItem({super.key, required this.daily});
  final Daily daily;

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
                  },
                  icon: Icon(Icons.done_sharp)),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      daily.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              // const Spacer(),
              SizedBox(
                width: 3,
              ),
              IconButton(
                  onPressed: () {
                    print('delete quest');
                  },
                  icon: Icon(Icons.delete)),
            ],
          )),
    );
  }
}
