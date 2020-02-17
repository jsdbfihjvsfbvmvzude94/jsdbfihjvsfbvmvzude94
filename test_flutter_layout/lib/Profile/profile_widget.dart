import 'package:flutter/material.dart';
import 'Settings/settings_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ProfileWidget extends StatefulWidget{
  ProfileWidget({Key key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  String val1 = "";

  @override
  void initState(){
    _getPrefs();
  }

  Future<String> _getPrefs () async {
    final prefs = await SharedPreferences.getInstance();

// Try reading data from the counter key. If it doesn't exist, return 0.
    val1 = prefs.getString('val1') ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    _getPrefs();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dein Profil"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsWidget()));
            },
          )
        ],
      ),
      body: Text("Du hast gewählt: " + val1),
    );
  }
}
