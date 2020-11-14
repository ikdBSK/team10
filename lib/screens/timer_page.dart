//タイマーのページ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_team10/components/start_button.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:app_team10/variable.dart';
import 'dart:async';

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  int _startMin = studyTimeMin;
  void startTimer(){}

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
          Text('勉強時間開始まで'),


          //タイマー
          //TODO: カウントダウン実装
          Text(
            _startMin.toString(),
          ),

          //スタートボタン
          Container(
            child: Center(
              child: StartButton(
                onTap: (){
                  //TODO: タイマースタート
                },
                buttonTitle: 'START',
                colour: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}