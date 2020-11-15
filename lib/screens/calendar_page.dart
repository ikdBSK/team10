//カレンダーを表示するページ
import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final image0 = Image.asset(
      "lib/images/Black Routine Transparent.png",
      color: Colors.white.withOpacity(0.0),
    );
    final image1 = Image.asset(
      "lib/images/Black Routine Transparent.png",
    );
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
                    //width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: size.height / 3.3,
                    left: 0.0,
                    width: size.width / 4,
                    height: size.width / 4,
                    child: Image.asset(
                      "lib/images/Black Routine Transparent.png",
                      height: 50,
                    ),
                  ), //スタンプカード
                  Positioned(
                    top: size.height / 3.3,
                    left: size.width / 4,
                    width: size.width / 4,
                    height: size.width / 4,
                    child: Image.asset(
                      "lib/images/Black Routine Transparent.png",
                      height: 50,
                    ),
                  ), //スタンプ
                  Positioned(
                    top: size.height / 3.3,
                    left: 2 * size.width / 4,
                    width: size.width / 4,
                    height: size.width / 4,
                    child: Image.asset(
                      "lib/images/Black Routine Transparent.png",
                      height: 50,
                    ),
                  ),
                  Positioned(
                    top: size.height / 3.3,
                    left: 3 * size.width / 4,
                    width: size.width / 4,
                    height: size.width / 4,
                    child: Image.asset(
                      "lib/images/Black Routine Transparent.png",
                      height: 50,
                    ),
                  ),
                  Positioned(
                    top: size.height / 3.5 + size.width / 4,
                    left: 0.0,
                    width: size.width / 4,
                    height: size.width / 4,
                    child: AnimatedCrossFade(
                      firstChild: image0,
                      secondChild: image1,
                      duration: Duration(seconds: 0),
                      crossFadeState: _crossFadeState,
                    ),
                  ), //スタンプを押せる
                  Positioned(
                    top: size.height / 3.5 + 30 + size.width / 4,
                    left: 30.0,
                    width: 40,
                    height: 40,
                    child: RaisedButton(
                      color: Colors.white.withOpacity(0.0),
                      child: const Text('.'),
                      onPressed: () {
                        setState(() {
                          _crossFadeState = CrossFadeState.showSecond;
                        });
                      },
                    ),
                  ), //スタンプするボタン
                ],
              ),
            ),
          ),
         Container(
           height: 37,
            width: double.infinity,
            color: Colors.cyan[700],
          ),
        ],
      ),
    );
  }
}
