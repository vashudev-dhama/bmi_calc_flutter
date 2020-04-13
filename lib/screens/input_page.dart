import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/reusable_tiles.dart';
import '../components/card_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import 'result_page.dart';
import '../components/reusable_button.dart';
import '../bmi_calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //to keep track of user's gender
  Gender userGender;
  // Default user height and weight.
  int userHeight = 180;
  int userWeight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  //Male gender gesture detector
                  child: ReusableTiles(
                    onTapFunction: () {
                      setState(() {
                        userGender = Gender.male;
                      });
                    },
                    tileColor: userGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: GenderCardContent(
                      icon: FontAwesomeIcons.mars,
                      textContent: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  //Female gender gesture detector
                  child: ReusableTiles(
                    onTapFunction: () {
                      setState(() {
                        userGender = Gender.female;
                      });
                    },
                    tileColor: userGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: GenderCardContent(
                      icon: FontAwesomeIcons.venus,
                      textContent: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableTiles(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        userHeight.toString(),
                        style: kNumericTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: userHeight.toDouble(),
                    min: minHeight,
                    max: maxHeight,
                    activeColor: kActiveSliderColor,
                    inactiveColor: kInActiveSliderColor,
                    onChanged: (double newHeight) {
                      setState(() {
                        userHeight = newHeight.round();
                      });
                    },
                  ),
                ],
              ),
              tileColor: kActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableTiles(
                    tileColor: kActiveCardColor,
                    cardChild: NumericCardContent(
                      labelText: 'WEIGHT',
                      defaultValue: 60,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableTiles(
                    tileColor: kActiveCardColor,
                    cardChild: NumericCardContent(
                      labelText: 'AGE',
                      defaultValue: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetectorBottomButton(
              buttonLabelText: 'CALCULATE BMI',
              onTap: () {
                BmiCalculator calc =
                    BmiCalculator(height: userHeight, weight: weightValue);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      resultDesc: calc.getResultDescription(),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
