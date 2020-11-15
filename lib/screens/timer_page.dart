//タイマーのページ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_team10/components/start_button.dart';
import 'package:app_team10/variable.dart';
import 'dart:async';
import 'package:app_team10/components/drawer_menu.dart';
import 'package:app_team10/screens/calendar_page.dart';
import 'package:app_team10/constants.dart';

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

  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Morning Study'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //文章(例：「勉強開始時間まで」，「学習タイム」)
          //TODO: 文章切り替え
          Expanded(
            child: Text(
              text,
              style: kTextStyle,
            ),
          ),

          //タイマー
          //TODO: カウントダウン実装
          _timeStr(),

          //スタートボタン
          Expanded(
            child: Container(
              child: Center(
                child: Visibility(
                  child: StartButton(
                    onTap: (){
                      //TODO: タイマースタート
                      setState(() {
                        text = '学習タイム';
                        _timer = startTimer();
                        _isVisible = false;
                      });
                    },
                    buttonTitle: 'START',
                    colour: Colors.red,
                  ),
                  visible: _isVisible,
                ),
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
      style: TextStyle(fontSize: 120, color: Colors.black),
    );
  }

  String timerString(int leftSeconds) {
    final minutes = (leftSeconds / 60).floor().toString().padLeft(2, '0');
    final seconds = (leftSeconds % 60).floor().toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}