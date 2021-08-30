import 'package:flutter/material.dart';
import './ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kamikapp',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(238, 0, 57, 1),
        primaryIconTheme: IconThemeData(color: Colors.black),
        fontFamily: 'Rationale'
      ),
      home: LoginPage(),
    );
  }
}