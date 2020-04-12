import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_tiles.dart';
import 'card_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

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
  //user height
  int userHeight = 180;

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
                    cardChild: CardContent(
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
                    cardChild: CardContent(
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
                  ),
                ),
                Expanded(
                  child: ReusableTiles(
                    tileColor: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: kBottomContainerColor,
            height: 70.0,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
