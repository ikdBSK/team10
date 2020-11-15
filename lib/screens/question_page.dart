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
      body:


      Stack(
        children: [
          Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                flex: 1,
                child: Container(

                //現在時刻表示

                  child: Center(
                    child: ClockWidget(),
                  ),
                ),
              ),
          Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(40, 150, 40, 10),
            child: Card(
              color: Colors.teal,
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text('18×18='
                          ,style: TextStyle(

                              fontSize: 60

                          ),

                        ),
                        margin: EdgeInsets.symmetric(vertical: 100,horizontal: 0),
                      ),



                        Row(
                          children: [
                            TextField(
                                enabled: true,
                                // 入力数
                                maxLength: 10,
                                maxLengthEnforced: false,
                                style: TextStyle(color: Colors.red),
                                obscureText: false,
                                maxLines:1 ,
                                //パスワード
                              decoration: InputDecoration(
                                labelText: "数値を入力してください。",
                                hintText: '例（114514）',
                                icon: Icon(Icons.person_outline),
                            ),
                            ),
                            CircleAvatar(


                                child: Text('push'),
                                radius: 30.0,
                                backgroundColor: Colors.yellow,
                              ),

                          ],
                            mainAxisAlignment: MainAxisAlignment.end,

                        ),
                    ],
                  ),

                ],
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
}

