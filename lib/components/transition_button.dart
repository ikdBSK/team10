import 'package:flutter/material.dart';
import 'package:app_team10/constants.dart';
import 'package:app_team10/screens/timer_page.dart';

class TransitionButton extends StatelessWidget {

  TransitionButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kButtonTextStyle,
          ),
        ),

        //TODO: ここらへん調整お願いします！
        color: kButtonContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kButtonContainerHeight,

      ),
    );
  }
}