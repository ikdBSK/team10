//アラームを止めるための問題を解くページ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'timer_page.dart';
import 'calendar_page.dart';
import 'package:app_team10/components/transition_button.dart';
import 'package:app_team10/widget/clock_widget.dart';
import 'package:app_team10/components/drawer_menu.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Morning Study'),
      ),
      body: Column(
        children: <Widget>[
          //現在時刻表示
          Container(
            child: Center(
              child: ClockWidget(),
            ),
          ),
          //問題

          //ボタン
          TransitionButton(
            buttonTitle: 'STOP',
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (content) => TimerPage(),
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: DrawerMenu(),
      ),
    );
  }
}

