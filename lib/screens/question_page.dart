//アラームを止めるための問題を解くページ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'timer_page.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Morning Study'),
      ),
      body: Column(
        children: <Widget>[
          //現在時刻表示
          //問題
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (content) => TimerPage(),
                ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  '問題画面からタイマー画面へ',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
