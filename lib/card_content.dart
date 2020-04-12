import 'package:flutter/material.dart';

const double iconSize = 80.0;
const double sizedBoxHeight = 10.0;
const labelTextStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.white,
);

class CardContent extends StatelessWidget {
  //card text
  final String textContent;
  //card icon
  final IconData icon;

  CardContent({this.icon, this.textContent});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          textContent,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
