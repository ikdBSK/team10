//team10
import 'package:app_team10/screens/question_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MorningStudy());
}

class MorningStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //themeを作る
      //最初のページを表示する
      home: QuestionPage(),
    );
  }
}
