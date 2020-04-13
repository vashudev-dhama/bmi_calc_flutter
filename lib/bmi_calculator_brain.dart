import 'package:flutter/cupertino.dart';
import 'dart:math';

class BmiCalculator {
  final int height;
  final int weight;
  double _bmi;
  BmiCalculator({
    @required this.height,
    @required this.weight,
  });

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi < 18.5) {
      return 'Underweight';
    } else {
      return 'Normal';
    }
  }

  String getResultDescription() {
    if (_bmi >= 25) {
      return 'Your weight is higher than normal body weight.';
    } else if (_bmi < 18.5) {
      return 'Your weight is lower than normal body weight.';
    } else {
      return 'Your weight is normal. Good Job!';
    }
  }
}
