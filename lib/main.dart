// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import 'mainScreen/name.dart';
// import 'stats/userStr.dart';
// import 'stats/userStat.dart';
// import 'models/user.dart';
import 'screens/mainpage.dart';
import 'screens/questpage.dart';

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
  int _selectedPage = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    MainScreen(),
    QuestPage(),
    Text(
      'Index 2: Daily',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // // appBar: AppBar(
      // //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'To Do',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Daily',
          ),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Theme.of(context).primaryColorDark,
        onTap: _onItemTapped,
      ),
    );
  }
}
