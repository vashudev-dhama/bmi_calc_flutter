import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  /// What should button do on press?
  final Function onPressed;

  /// Icon to be appear on this button.
  final IconData icon;

  /// Shape of this button.
  final ShapeBorder shape;

  /// Color of button.
  final Color buttonColor;

  /// Elevation for this button.
  final double elevation;

  /// Dimensions for this button.
  final double width;
  final double height;

  ReusableButton(
      {@required this.icon,
      @required this.onPressed,
      this.shape = const CircleBorder(),
      this.width = 56.0,
      this.height = 56.0,
      this.buttonColor = Colors.grey,
      this.elevation = 6.0});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: elevation,
      child: Icon(icon),
      shape: shape,
      fillColor: buttonColor,
      constraints: BoxConstraints.tightFor(
        width: width,
        height: height,
      ),
    );
  }
}
