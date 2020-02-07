import 'package:flutter/material.dart';
import 'termsOfUse_widget.dart';

class NotificationWidget extends StatelessWidget {
  bool _mail = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Benachrichtigungen"),
      ),
      body: ListView(
          children: <Widget>[
            SwitchListTile(
              title: Text("Email Benachrichtigungen"),
              value: _mail,
              onChanged: (bool value) { },
            ),
            ListTile(
              title: Text("Push Benachrichtigungen"),
              onTap: (){},
            ),
            ListTile(
              title: Text('News per SMS'),
              onTap:(){},
            ),
          ]
      ),
    );
  }
}