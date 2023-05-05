// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CharacterName extends StatefulWidget {
  //const CharacterName({super.key});
  final String name;

  CharacterName(this.name);

  @override
  State<CharacterName> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CharacterName> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 70,
      // width: 200,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 45),
        child: Text(
          widget.name,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
