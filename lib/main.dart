import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BmiCalculator());

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF141414),
        scaffoldBackgroundColor: Color(0xFF141414),
      ),
      title: 'BMI Calculator',
      home: InputPage(),
    );
  }
}
