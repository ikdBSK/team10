//設定画面
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Column(
        children: <Widget>[
          //TODO: 時間設定の実装
          Expanded(
            child: Text('起床時間'),
          ),
          Expanded(
            //alarm時間設定
            child: Row(

            ),
          ),

          Expanded(
            child: Text('勉強開始時間'),
          ),
          Expanded(
            //alarm時間設定
            child: Row(

            ),
          ),

          Expanded(
            child: Text('勉強時間'),
          ),
          Expanded(
            //勉強時間設定
            child: Row(

            ),
          ),
        ],
      ),
    );
  }
}
