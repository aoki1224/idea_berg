import 'package:flutter/material.dart';
import 'package:idea_slot/Screens/word_screen.dart';

void main() => runApp(MyApp());

ThemeData appTheme = ThemeData(primaryColor: Colors.teal);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: WordScreen()
    );
  }
}