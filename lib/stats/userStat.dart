// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class UserStat extends StatefulWidget {
  // const UserStat({super.key});
  final String statName;
  final int statValue;

  UserStat(this.statName, this.statValue);

  @override
  State<UserStat> createState() => _UserStatState();
}

class _UserStatState extends State<UserStat> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: 190,
      child: Container(
        decoration: BoxDecoration(
          border:
              Border.all(width: 2, color: Theme.of(context).primaryColorDark),
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        margin: EdgeInsets.all(40),
        child: Column(
          children: [
            Text(widget.statName, style: TextStyle(fontSize: 15)),
            Text(widget.statValue.toString(), style: TextStyle(fontSize: 35)),
          ],
        ),
      ),
    );
  }
}
