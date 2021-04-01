import 'package:flutter/material.dart';
import 'extracted_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum gender {
  female,
  male,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calc')),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  gestureDetector: () {
                    setState(() {
                      selectedGender = gender.male;
                    });
                  },
                  colour: selectedGender == gender.male
                      ? activeColor
                      : inActiveColor,
                  cardChild: IconContent(
                    iconAwesome: FontAwesomeIcons.mars,
                    iconText: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  gestureDetector: () {
                    setState(() {
                      selectedGender = gender.female;
                    });
                  },
                  colour: selectedGender == gender.female
                      ? activeColor
                      : inActiveColor,
                  cardChild: IconContent(
                    iconAwesome: FontAwesomeIcons.venus,
                    iconText: 'FEMALE',
                  ),
                ),
              )
            ],
          )),
          Expanded(
              child: ReusableCard(
            cardChild: Column(
              children: [Text('High.')],
            ),
            colour: activeColor,
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: activeColor,
                ),
              ),
              Expanded(
                  child: ReusableCard(
                colour: activeColor,
              ))
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 50.0,
            color: Color(0XFFBF360C),
          )
        ],
      ),
    );
  }
}
