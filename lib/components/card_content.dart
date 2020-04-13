import 'package:bmi_calculator/components/reusable_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// To be used to track weight value across the classes
int weightValue = 60;

class GenderCardContent extends StatelessWidget {
  //card text
  final String textContent;
  //card icon
  final IconData icon;

  GenderCardContent({this.icon, this.textContent});

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

class NumericCardContent extends StatefulWidget {
  /// Label text on this tile card
  final String labelText;

  /// Default value of [labelText] on tile card
  final int defaultValue;

  NumericCardContent({@required this.labelText, @required this.defaultValue});

  @override
  _NumericCardContentState createState() =>
      _NumericCardContentState(value: defaultValue);
}

class _NumericCardContentState extends State<NumericCardContent> {
  int value;
  void updateValue() {
    if (widget.labelText == 'WEIGHT') {
      weightValue = value;
    }
  }

  _NumericCardContentState({@required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.labelText,
          style: kLabelTextStyle,
        ),
        Text(
          value.toString(),
          style: kNumericTextStyle,
        ),

        /// To render two icon buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ReusableIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  value--;
                  updateValue();
                });
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            ReusableIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  value++;
                  updateValue();
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
