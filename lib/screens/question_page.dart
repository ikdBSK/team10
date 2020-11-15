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
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 100, 10, 100),
                              height: 50,
                              width: 150,
                              color: Colors.white,
                            ),

                            CircleAvatar(
                              child: TransitionButton(
                                buttonTitle: 'PUSH',





                                onTap: (){
                                  Navigator.push(
                                    context,

                                    MaterialPageRoute(
                                      builder: (content) => TimerPage(),
                                    ),
                                  );
                                },

                              ),




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

