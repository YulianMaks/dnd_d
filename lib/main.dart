// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import 'mainScreen/name.dart';
// import 'stats/userStr.dart';
// import 'stats/userStat.dart';
// import 'models/user.dart';
import 'screens/mainpage.dart';
import 'screens/questpage.dart';
import 'screens/dailypage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dnd",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   theme: ThemeData(primarySwatch: Colors.purple),
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Персонаж'),
    //       actions: [
    //         IconButton(
    //           onPressed: () {
    //             print('settings key pressed');
    //           },
    //           icon: const Icon(Icons.add),
    //         ),
    //       ],
    //     ),
    //     body: SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           MainScreen(),
    //           // QuestPage(),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    return MainScreen();
  }
}
