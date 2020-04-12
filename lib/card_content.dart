import 'package:flutter/material.dart';
import 'constants.dart';

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
          size: kGenderIconSize,
        ),
        SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          textContent,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
