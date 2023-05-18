import 'package:flutter/material.dart';

import '../models/daily.dart';
import '../daily/daily_item.dart';

class DailyList extends StatelessWidget {
  const DailyList({required this.dailies, super.key});

  final List<Daily> dailies;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dailies.length,
      itemBuilder: (ctx, index) => DailyItem(daily: dailies[index]),
    );
  }
}
