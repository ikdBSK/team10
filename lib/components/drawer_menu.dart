import 'package:flutter/material.dart';
import 'package:app_team10/screens/setting_page.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'Morning Study',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text('Setting'),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (content) => SettingPage(),
              ),
            );
          },
        )
      ],
    );
  }
}

