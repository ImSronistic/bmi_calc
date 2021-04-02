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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: klabelTextStyle,
                ),
                Row(
                  //along the length of the row
                  mainAxisAlignment: MainAxisAlignment.center,
                  //along the width of the row
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '180',
                      style: klabelNumStyle,
                    ),
                    Text(
                      'cm',
                      style: klabelTextStyle,
                    )
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
