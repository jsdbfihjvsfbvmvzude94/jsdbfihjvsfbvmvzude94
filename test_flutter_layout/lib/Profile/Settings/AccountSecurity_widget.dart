import 'package:flutter/material.dart';
import 'termsOfUse_widget.dart';

class AccountSecurityWidget extends StatelessWidget {
  bool _mail = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AccountSecurity"),
      ),
      body: ListView(
          children: <Widget>[
            SwitchListTile(
              title: Text("Email Adresse"),
              value: _mail,
              onChanged: (bool value) { },
            ),
            ListTile(
              title: Text("Passwort"),
              onTap: (){},
            ),
            ListTile(
              title: Text('2 Faktor Authentifizierung"'),
              onTap:(){},
            ),
          ]
      ),
    );
  }
}