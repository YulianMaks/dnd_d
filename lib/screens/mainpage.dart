import 'package:flutter/material.dart';

// import '../mainScreen/name.dart';
// import '../stats/userStr.dart';
import '../stats/userStat.dart';
// import '../models/user.dart';
// import '../screens/questpage.dart';
import '../quests/new_quest.dart';
import '../models/quest.dart';
import '../quests/quest_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/auth.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _userUid() {
    return Text(user?.email ?? 'User email');
  }

  Widget _signOutButton() {
    return ElevatedButton(
      onPressed: signOut,
      child: const Text('Sign out'),
    );
  }

  final List<Quest> _addedQuest = [
    Quest(name: "Go to gym", date: DateTime.now(), stat: QuestStat.str),
    Quest(name: "Jogging", date: DateTime.now(), stat: QuestStat.dex),
  ];

  var userStr = 1;
  var userDex = 1;
  var userCon = 1;
  var userInt = 1;
  var userWis = 1;
  var userCha = 1;

  var strCounter = 0;
  var dexCounter = 0;
  var conCounter = 0;
  var intCounter = 0;
  var wisCounter = 0;
  var chaCounter = 0;

  void _addNewQuest(Quest quest) {
    setState(() {
      _addedQuest.add(quest);
    });
  }

  void _deleteQuest(Quest quest) {
    setState(() {
      _addedQuest.remove(quest);
      print(quest.stat);
    });
  }

  void modalQuestFields(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) {
          // return GestureDetector(
          //     onTap: () {},
          //     behavior: HitTestBehavior.opaque,
          //     child: Text('loh'));
          return NewQuest(onAddNewQuest: _addNewQuest);
        });
  }

  void completeQuest(Quest quest) {
    switch (quest.stat) {
      case QuestStat.str:
        {
          strCounter++;
          if (strCounter == 20) {
            setState(() {
              userStr++;
              strCounter = 0;
            });
          }
        }
        break;
      case QuestStat.dex:
        {
          dexCounter++;
          if (dexCounter == 20) {
            setState(() {
              userDex++;
              dexCounter = 0;
            });
          }
        }
        break;
      case QuestStat.con:
        {
          conCounter++;
          if (conCounter == 20) {
            setState(() {
              userCon++;
              conCounter = 0;
            });
          }
        }
        break;
      case QuestStat.int:
        {
          intCounter++;
          if (intCounter == 20) {
            setState(() {
              userInt++;
              intCounter = 0;
            });
          }
        }
        break;
      case QuestStat.wis:
        {
          wisCounter++;
          if (wisCounter == 20) {
            setState(() {
              userWis++;
              wisCounter = 0;
            });
          }
        }
        break;
      case QuestStat.cha:
        {
          chaCounter++;
          if (chaCounter == 20) {
            setState(() {
              userCha++;
              chaCounter = 0;
            });
          }
        }
        break;
    }

    // setState(() {
    //   userStr += 1;
    // });
    _deleteQuest(quest);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Персонаж'),
          actions: [
            IconButton(
              onPressed: signOut,
              icon: const Icon(Icons.logout),
            ),
            IconButton(
              onPressed: () {
                print('add quest key pressed');
                modalQuestFields(context);
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // _signOutButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserStat('STR', userStr, Stat.str),
                  UserStat('DEX', userDex, Stat.dex),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserStat('CON', userCon, Stat.con),
                  UserStat('INT', userInt, Stat.int),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserStat('WIS', userWis, Stat.wis),
                  UserStat('CHA', userCha, Stat.cha),
                ],
              ),
              const Text('Твої завдання!'),
              const SizedBox(
                height: 15,
              ),
              // QuestPage(addedQuest: _addedQuest, deleteQuest: _deleteQuest),
              QuestList(
                quests: _addedQuest,
                onDeleteQuest: _deleteQuest,
                onCompleteQuest: completeQuest,
              )
            ],
          ),
        ),
      ),
    );
  }
}
