import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableIconButton extends StatelessWidget {
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

  ReusableIconButton(
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

class GestureDetectorBottomButton extends StatelessWidget {
  final String buttonLabelText;
  final Function onTap;
  GestureDetectorBottomButton({
    @required this.buttonLabelText,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonLabelText,
            style: kLargeButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColor,
        height: 70.0,
        width: double.infinity,
      ),
    );
  }
}
