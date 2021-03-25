import 'dart:ui';

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
          //textTheme: TextTheme(bodyText2: TextStyle(color: Color(0xffffffff)))),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calc'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
