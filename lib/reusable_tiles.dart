import 'package:flutter/material.dart';

class ReusableTiles extends StatelessWidget {
  //for tile color
  final Color tileColor;
  //for tile content child
  final Widget cardChild;
  //function to be performed for gesture detector widget
  final Function onTapFunction;

  ReusableTiles({@required this.tileColor, this.cardChild, this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: tileColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(8.0),
      ),
    );
  }
}
