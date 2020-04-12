import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 70.0;
const activeCardColor = Color(0xFF232833);
const bottomContainerColor = Color(0x8840E0D0);

class InputPage extends StatefulWidget {
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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

class ReusableTiles extends StatelessWidget {
  //for tile color
  final Color tileColor;
  //for tile content child
  final Widget cardChild;

  ReusableTiles({@required this.tileColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        color: tileColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(8.0),
    );
  }
}
