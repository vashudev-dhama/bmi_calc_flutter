import 'package:flutter/material.dart';

class ReusableTiles extends StatefulWidget {
  //for tile color
  final Color tileColor;
  //for tile content child
  final Widget cardChild;
  //function to be performed for gesture detector widget
  final Function onTapFunction;

  ReusableTiles({@required this.tileColor, this.cardChild, this.onTapFunction});

  @override
  _ReusableTilesState createState() => _ReusableTilesState();
}

class _ReusableTilesState extends State<ReusableTiles> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTapFunction,
      child: Container(
        child: widget.cardChild,
        decoration: BoxDecoration(
          color: widget.tileColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(8.0),
      ),
    );
  }
}
