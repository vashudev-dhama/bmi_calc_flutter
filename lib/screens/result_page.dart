import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/components/reusable_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_tiles.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String resultDesc;

  ResultPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.resultDesc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kResultTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableTiles(
              tileColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kBmiAlphabeticResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiNumericResultTextStyle,
                  ),
                  Text(
                    resultDesc,
                    textAlign: TextAlign.center,
                    style: kBmiDescResultTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetectorBottomButton(
              buttonLabelText: 'RE-CALCULATE',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
            ),
          )
        ],
      ),
    );
  }
}
