import 'package:flutter/material.dart';
import 'reusable_tiles.dart';
import 'card_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//height for bottom button container
const bottomContainerHeight = 70.0;
//color for active card
const activeCardColor = Color(0xFF252525);
//color for inactive card
const inactiveCardColor = Color(0xFF1b1b1b);
//color for bottom button container
const bottomContainerColor = Color(0x8840E0D0);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
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
                        ? activeCardColor
                        : inactiveCardColor,
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
                        ? activeCardColor
                        : inactiveCardColor,
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
              tileColor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableTiles(
                    tileColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableTiles(
                    tileColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
            height: 70.0,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
