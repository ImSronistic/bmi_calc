import 'package:flutter/material.dart';
import 'extracted_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeColor = Color(0xFFBF360C);
const inActiveColor = Color(0xff111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = activeColor;
  Color femaleCardColour = activeColor;

  void updateColour(int gender) {
    if (gender == 1) {
      if (maleCardColour == inActiveColor) {
        maleCardColour = activeColor;
        femaleCardColour = inActiveColor;
      } else {
        maleCardColour = inActiveColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColour == inActiveColor) {
        femaleCardColour = activeColor;
        maleCardColour = inActiveColor;
      } else {
        femaleCardColour = inActiveColor;
      }
    }
  }

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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(1);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColour,
                    cardChild: IconContent(
                      iconAwesome: FontAwesomeIcons.mars,
                      iconText: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    //anonymous
                    setState(() {
                      updateColour(2);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleCardColour,
                    cardChild: IconContent(
                      iconAwesome: FontAwesomeIcons.venus,
                      iconText: 'FEMALE',
                    ),
                  ),
                ),
              )
            ],
          )),
          Expanded(
              child: ReusableCard(
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
