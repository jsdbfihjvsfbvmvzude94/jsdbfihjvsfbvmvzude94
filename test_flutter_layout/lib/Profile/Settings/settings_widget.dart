import 'package:flutter/material.dart';
import 'package:test_flutter_layout/Profile/Settings/notification_widget.dart';
import 'aboutFitCash_widget.dart';

class SettingsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dein Einstellungen"),
        ),
      body: ListView(
          children: <Widget>[
            ListTile(
              subtitle: Text('Kontoeinstellungen'),
            ),
            ListTile(
              title: Text("Kontosicherheit"),
              subtitle: Text("Passwort, E-Mail Adresse, Verbundene Konten"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSecurityWidget()));
              },
            ),
            ListTile(
              title: Text("Benachrichtigungen"),
              subtitle: Text("E-Mail, Push, SMS"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationWidget()));},
            ),
            ListTile(
              subtitle: Text('Support'),
            ),
            ListTile(
              title: Text("Info zu FitCash"),
              subtitle: Text("Nutzungsbedingungen, Datenschutzbestimmungen"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AboutFitCashWidget()));},
            ),
            ListTile(
              title: Text("Häufige Fragen"),
              subtitle: Text("FAQ, Premium Angebot, Quellen"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Teile die FitCash app"),
              subtitle: Text("Via Whatsapp, Mail, QR-Code"),
              onTap: (){},
            ),
            ListTile(
              title: Text("Abmelden"),
              onTap: (){},
            ),
         ]
      ),
    );
  }
}