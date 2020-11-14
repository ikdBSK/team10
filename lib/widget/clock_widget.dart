import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class ClockWidget extends StatefulWidget {
  @override
  _ClockWidgetState createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  DateTime _nowTime = DateTime.now();
  final _dateFormat = new DateFormat.Hms();

  @override
  void initState() {
    super.initState();
    _initTimer();
  }

  void _initTimer() {
    Timer.periodic(Duration(milliseconds: 33),
            (Timer timer) => setState(() => _nowTime = DateTime.now()));
  }

  @override
  Widget build(BuildContext context) {
    var text = _dateFormat.format(_nowTime);
    var fontSize = MediaQuery.of(context).size.width * 0.15;
    return Stack(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 4
                ..color = Colors.black),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
          ),
        )
      ],
    );
  }
}
