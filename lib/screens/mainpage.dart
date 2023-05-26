import 'package:flutter/material.dart';

import '../mainScreen/name.dart';
// import '../stats/userStr.dart';
import '../stats/userStat.dart';
// import '../models/user.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          //backgroundColor: ,
          title: const Text('Character'),
          actions: [
            IconButton(
              onPressed: () {
                print('settings key pressed');
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // CharacterName('Sollin'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserStat('STR', 12, Stat.str),
                UserStat('DEX', 14, Stat.dex),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserStat('CON', 10, Stat.con),
                UserStat('INT', 15, Stat.int),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserStat('WIS', 9, Stat.wis),
                UserStat('CHA', 11, Stat.cha),
              ],
            )
          ],
        ),
      ),
    );
  }
}
