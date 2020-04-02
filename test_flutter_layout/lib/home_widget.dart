import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'Profile/profile_widget.dart';
import 'courses_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {


  Locale myLocale = Localizations.localeOf(context);
//  Widget Localizations(){
//
//  }



  int _currentIndex = 2;              // TODO: Frage Niki: wieso "2" ??
  final List<Widget> _children = [
    PlaceholderWidget(Colors.yellow),
    PlaceholderWidget(Colors.deepOrange),
    CoursesWidget(Colors.green),
    PlaceholderWidget(Colors.blue),
    ProfileWidget(),
    PlaceholderWidget(Colors.purpleAccent)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset),
            title: Text('Quiz'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            title: Text('News'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Kurse'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.dvr),
            title: Text('Notizen'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profil')
          )

          ,
          new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Test')
          )
        ],
      ),
    );
  }


  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
