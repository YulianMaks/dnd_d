import 'package:flutter/material.dart';

import '../models/daily.dart';
import '../daily/daily_list.dart';

class DailyPage extends StatefulWidget {
  const DailyPage({super.key});

  @override
  State<DailyPage> createState() => _DailyPageState();
}

final List<Daily> _addedDaily = [
  Daily(name: "Brush teeth"),
  Daily(name: "Breakfast"),
];

class _DailyPageState extends State<DailyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dailies"),
          actions: [
            IconButton(
              onPressed: () {
                print('settings key pressed');
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: DailyList(dailies: _addedDaily),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print('Add quest button');
          },
          // child: Icon(Icons.add),
          icon: const Icon(Icons.add),
          label: const Text('Add Daily'),
        ),
      ),
    );
  }
}
