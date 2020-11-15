//アラームを止めるための問題を解くページ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'timer_page.dart';
import 'package:app_team10/components/transition_button.dart';
import 'package:app_team10/widget/clock_widget.dart';

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

                        padding: EdgeInsets.fromLTRB(10, 100, 10, 100),
                        height: 180,
                        width: 250,
                        color: Colors.white,
                        child: Text('18×18=',
                        ),

                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      ),
                      Row(


                        children: [


                          Container(
                            margin: EdgeInsets.fromLTRB(10, 100, 10, 100),
                            height: 50,
                            width: 150,
                            color: Colors.white,
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










            //問題

            //ボタン




    );
  }
}

