import 'package:flutter/material.dart';

class UserStr extends StatefulWidget {
  //const UserStr({super.key});

  @override
  State<UserStr> createState() => _UserStrState();
}

class _UserStrState extends State<UserStr> {
  @override
  final _str = 12;

  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        Container(
          child: Text('STR'),
        )
      ]),
    );
  }
}
