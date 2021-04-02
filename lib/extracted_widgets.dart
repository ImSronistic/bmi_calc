import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';

// our own Extracted Widgets
class IconContent extends StatelessWidget {
  //created constructors
  IconContent({@required this.iconAwesome, @required this.iconText});
  final IconData iconAwesome;
  final String iconText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconAwesome,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.gestureDetector});
  final Color colour;
  final Widget cardChild;
  final Function gestureDetector;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureDetector,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
