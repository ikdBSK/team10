//カレンダーを表示するページ
import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('今日の成果'),
      ),
      body: Column(
        children: <Widget>[
          //スタンプカード表示
          Container(
            child: Center(
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "lib/images/card.jpg",
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 260.0,
                    left: 0.0,
                    width: size.width/4,
                    height: size.width/4,
                    child: Image.asset(
                      "lib/images/Black Routine.png",
                      height: 50,
                    ),
                  ),
                  Positioned(
                    top: 260.0,
                    left: size.width/4,
                    width: size.width/4,
                    height: size.width/4,
                    child: Image.asset(
                      "lib/images/Black Routine.png",
                      height: 50,
                    ),
                  ),
                  Positioned(
                    top: 260.0,
                    left: 2*size.width/4,
                    width: size.width/4,
                    height: size.width/4,
                    child: Image.asset(
                      "lib/images/Black Routine.png",
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
