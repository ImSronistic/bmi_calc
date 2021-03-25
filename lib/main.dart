import 'dart:ui';
import 'input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMICalc());
}

class BMICalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21), // remove # with 0xff
        accentColor: Colors.redAccent,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        //textTheme: TextTheme(bodyText2: TextStyle(color: Color(0xffffffff)))
      ),
    );
  }
}
