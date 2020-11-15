//設定画面
import 'package:flutter/material.dart';
import 'package:app_team10/variable.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  TimeOfDay _awakeTime = new TimeOfDay.now();
  TimeOfDay _startTime = new TimeOfDay.now();

  Future<Null> _selectAwakeTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _awakeTime,
    );
    if(picked != null) setState(() => _awakeTime = picked);
  }

  Future<Null> _selectStartTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _startTime,
    );
    if(picked != null) setState(() => _startTime = picked);
  }

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
          Center(child:Text("$_awakeTime")),
          RaisedButton(onPressed: () => _selectAwakeTime(context), child: Text('時間選択'),),

          Expanded(
            child: Text('勉強開始時間'),
          ),
          Center(child:Text("$_startTime")),
          RaisedButton(onPressed: () => _selectStartTime(context), child: Text('時間選択'),),

          Expanded(
            child: Text('勉強時間'),
          ),

        ],
      ),
    );
  }
}
