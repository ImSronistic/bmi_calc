import 'dart:math';

class CalcBrain {
  CalcBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi; //Private only accessible within this class

  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.3) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Try to do Yoga and Exercise & eat less.';
    } else if (_bmi > 18.3) {
      return 'Congrats! You have a perfect body weight.';
    } else {
      return 'Try to eat more healthy foods & don\'t eat fast food.';
    }
  }
}
