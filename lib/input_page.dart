import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeColor = Color(0xFF0A0E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  colour: activeColor,
                  cardChild: IconContent(),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeColor,
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

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.text});
  final Widget icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'MALE',
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xff8d8e98),
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
