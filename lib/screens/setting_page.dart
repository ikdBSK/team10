//設定画面
import 'package:flutter/material.dart';
import 'package:app_team10/variable.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  Future<Null> _selectAwakeTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: awakeTime,
    );
    if(picked != null) setState(() => awakeTime = picked);
  }

  Future<Null> _selectStartTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: startTime,
    );
    if(picked != null) setState(() => startTime = picked);
  }

  final numberController = TextEditingController();

  // ignore: missing_return
  Function _setStudyTime(int studyTime){
    setState(){
      studyTimeMin = studyTime;
    }
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
          Center(child:Text("$awakeTime")),
          RaisedButton(onPressed: () => _selectAwakeTime(context), child: Text('時間選択'),),

          Expanded(
            child: Text('勉強開始時間'),
          ),
          Center(child:Text("$startTime")),
          RaisedButton(onPressed: () => _selectStartTime(context), child: Text('時間選択'),),

          Expanded(
            child: TextField(
              controller: numberController,
              decoration: new InputDecoration(labelText: "勉強時間"),
              keyboardType: TextInputType.number,
              onChanged: (Text){
                setState(() {
                  studyTimeMin = int.parse(Text);
                });
              },
            ),
          ),

          Expanded(
            child: Text(
                studyTimeMin.toString(),
            ),
          )

        ],
      ),
    );
  }
}
