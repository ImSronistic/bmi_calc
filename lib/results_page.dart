import 'package:flutter/material.dart';
import 'constants.dart';
import 'extracted_widgets.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: klargeTextButton,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: )
        ],
      ),
    );
  }
}
