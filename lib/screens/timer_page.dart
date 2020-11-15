//タイマーのページ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_team10/components/start_button.dart';
import 'package:app_team10/variable.dart';
import 'dart:async';
import 'package:app_team10/components/drawer_menu.dart';
import 'package:app_team10/screens/calendar_page.dart';

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  int _startMin = studyTimeMin;
  int _currentSeconds = studyTimeMin*60;
  Timer _timer;

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  Timer startTimer(){
    return Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) {
        if (_currentSeconds < 1) {
          timer.cancel();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (content) => CalendarPage(),
            ),
          );
        } else {
          setState(() {
            _currentSeconds--;
          });
        }
      },
    );
  }

  String text='勉強時間開始まで';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Morning Study'),
      ),
      body: Column(
        children: <Widget>[
          //文章(例：「勉強開始時間まで」，「学習タイム」)
          //TODO: 文章切り替え
          Text(text),

          //タイマー
          //TODO: カウントダウン実装
          _timeStr(),

          //スタートボタン
          Container(
            child: Center(
              child: StartButton(
                onTap: (){
                  //TODO: タイマースタート
                  text = '学習タイム';
                  _timer = startTimer();
                },
                buttonTitle: 'START',
                colour: Colors.red,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: DrawerMenu(),
      ),
    );
  }

  Widget _timeStr() {
    return Text(
      timerString(_currentSeconds),
      style: TextStyle(fontSize: 32, color: Colors.black),
    );
  }

  String timerString(int leftSeconds) {
    final minutes = (leftSeconds / 60).floor().toString().padLeft(2, '0');
    final seconds = (leftSeconds % 60).floor().toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}