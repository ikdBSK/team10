//タイマーのページ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Morning Study'),
      ),
      body: Column(
        children: <Widget>[
          //文章(例：「勉強開始時間まで」，「学習タイム」)
          //タイマー
          //スタートボタン
          Container(
            child: Center(
              child: Text(
                'タイマー画面',
              ),
            ),
          ),
        ],
      ),
    );
  }
}