import 'package:bottom_tab_nav/page/chat.dart';
import 'package:bottom_tab_nav/page/dashboard.dart';
import 'package:bottom_tab_nav/page/home.dart';
import 'package:bottom_tab_nav/page/profile.dart';
import 'package:bottom_tab_nav/page/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
