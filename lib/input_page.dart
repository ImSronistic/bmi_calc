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
        //crossAxisAlignment: CrossAxisAlignment.center,
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
                      ? kactiveColor
                      : kinActiveColor,
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
                      ? kactiveColor
                      : kinActiveColor,
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
              children: [
                Text(
                  'HEIGHT.',
                  style: klabelTextStyle,
                ),
                Row(
                  children: [
                    Text(
                      '180',
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w900),
                    ),
                  ],
                )
              ],
            ),
            colour: kactiveColor,
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kactiveColor,
                ),
              ),
              Expanded(
                  child: ReusableCard(
                colour: kactiveColor,
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
