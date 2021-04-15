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

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            buttonTitle,
            style: klargeTextButton,
          ),
        ),
      ),
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(bottom: 0.0),
      width: double.infinity,
      height: 50.0,
      color: Colors.deepOrangeAccent[700],
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

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
