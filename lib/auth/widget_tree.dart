import 'package:flutter/material.dart';

import 'auth.dart';
import 'home_page.dart';
import 'login_register_page.dart';
import '../screens/mainpage.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MainScreen();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
