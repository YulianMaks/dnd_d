// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

enum Stat { str, dex, con, int, wis, cha }

const nameOfStat = {
  Stat.str: "STR",
  Stat.dex: "DEX",
  Stat.con: "CON",
  Stat.int: "INT",
  Stat.wis: "WIS",
  Stat.cha: "CHA",
};

class UserStat extends StatefulWidget {
  // const UserStat({super.key});
  final String statName;
  final int statValue;
  final Stat stat;

  UserStat(this.statName, this.statValue, this.stat);

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
