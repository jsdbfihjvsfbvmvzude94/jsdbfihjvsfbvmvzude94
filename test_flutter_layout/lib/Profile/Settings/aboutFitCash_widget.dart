import 'package:flutter/material.dart';
import 'termsOfUse_widget.dart';

class AboutFitCashWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Infos zu FitCash"),
      ),
      body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Nutzungsbestimmungen"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TermsOfUseWidget()));},
            ),
            ListTile(
              title: Text("Datenschutzbestimmungen"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DataSecurityWidget()));},
            ),
            ListTile(
              title: Text('Richtlinien zum Schutz des geistigen Eigentums'),
              onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => DataSecurityWidget()));},
            ),
          ]
      ),
    );
  }
}


class DataSecurityWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Datenschutzbestimmungen"),
      ),
      body: Text ("Datenschutzbestimmungen bla bla")
    );
  }
}

class IntellectualPropertyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Richtlinien zum Schutz des geistigen Eigentums"),
        ),
        body: Text ("Geistiges Eigentum bla bla")
    );
  }
}