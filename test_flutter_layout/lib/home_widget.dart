import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'Profile/profile_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  int _currentIndex = 2;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.blue),
    ProfileWidget()
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