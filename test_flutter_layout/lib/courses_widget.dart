import 'package:flutter/material.dart';
import 'firstJourney_widget.dart';

class CoursesWidget extends StatelessWidget {
  final Color color;

  CoursesWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Deine Kurse"),
      ),
      body: Center(
        child: MaterialButton(
          child: Text("Go To Intro"),
          color: Colors.lightBlue,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => firstJourneyWidget()));
          },
        )
      )
    );
  }
}