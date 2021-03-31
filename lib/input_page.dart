import 'package:flutter/material.dart';
import 'extracted_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeColor = Color(0xFF0A0E33);
const intActiveColor = Color(0xff111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = intActiveColor;
  Color FemaleCardColour = intActiveColor;
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
                  onTap: () {},
                  child: ReusableCard(
                    colour: activeColor,
                    cardChild: IconContent(
                      iconAwesome: FontAwesomeIcons.mars,
                      iconText: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeColor,
                  cardChild: IconContent(
                      iconAwesome: FontAwesomeIcons.venus, iconText: 'FEMALE'),
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
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
