import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'home_widget.dart';
void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      localizationsDelegates: [
        // ...app-specific localizazion delegate[s] here
        GlobalMaterialLocalizations.delegate, // not needed for WidgetsApp
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), //English)
        const Locale('de'), //German
        const Locale.fromSubtags(languageCode: 'de'),
      ],


      title: 'My Flutter App',
      home: Home(),
    );
    //print(Localizations.localeOf((context)));
  }
}