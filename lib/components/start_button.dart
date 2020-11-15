import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {

  StartButton({@required this.onTap, @required this.buttonTitle, @required this.colour});

  final Function onTap;
  final String buttonTitle;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        buttonTitle,
        style: TextStyle(fontSize: 60),
      ),
      color: colour,
      shape: StadiumBorder(),
      onPressed: onTap,
    );
  }
}