//設定画面
import 'package:flutter/material.dart';
import 'package:app_team10/variable.dart';
import 'package:app_team10/constants.dart';

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
            child: Text(
              '起床時間',
              style: kTextStyle,
            ),
          ),
          Expanded(
            child: Center(
              child:Text(
                "$awakeTime",
                style: kTimeTextStyle,
              ),
            ),
          ),

          RaisedButton(
            onPressed: () => _selectAwakeTime(context),
              child: Text(
                '時間選択',
              ),
          ),

          Expanded(
            child: Text(
              '勉強開始時間',
              style: kTextStyle,
            ),
          ),
          Expanded(
            child: Center(
              child:Text(
                "$startTime",
                style: kTimeTextStyle,
              ),
            ),
          ),

          RaisedButton(
            onPressed: () => _selectStartTime(context),
              child: Text(
                '時間選択',
              ),
          ),

          Expanded(
            child: Center(
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
          ),

          Expanded(
            child: Text(
              studyTimeMin.toString(),
              style: kTextStyle,
            ),
          )

        ],
      ),
    );
  }
}
