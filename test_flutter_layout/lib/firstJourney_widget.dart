import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class firstJourneyWidget extends StatelessWidget {

  firstJourneyWidget();

  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('graphics/logo.png'); //<- Creates an object that fetches an image.
    var image = new Image(image: assetsImage, fit: BoxFit.cover); //<- Creates a widget that displays an image.

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dein Intro"),
      ),
      body: Container(
        child: Wrap(
              direction: Axis.horizontal,
              children: [
                image,
                RichText(
                text: TextSpan(
                    text: "Danke, dass du dich für FitCash entschieden hast",
                    style: TextStyle(color: Colors.greenAccent[400], fontSize: 20)
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      child: Text("Skip"),
                      onPressed: (){
                        //TODO Hier skippen
                        Navigator.pop(context);
                      },
                    ),
                    RaisedButton(
                      child: Text("Weiter"),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => journeyWidgetOne()));
                      },
                    )
                  ],
                )
              ],
            )
        ),
    );
  }
}

class journeyWidgetOne extends StatelessWidget {

  journeyWidgetOne();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dein Intro"),
      ),
      body: Container(
          child: Wrap(
            direction: Axis.horizontal,
            children: [
              RichText(
                text: TextSpan(
                    text: "Um die App zu personalisieren beantworte bitte die folgenden Fragen \n",
                    style: TextStyle(color: Colors.black87, fontSize: 20),

                ),
                textAlign: TextAlign.center,
              ),
              RichText(
                text: TextSpan(
                  text: "Wie alt bist du? \n",
                  style: TextStyle(color: Colors.black87, fontSize: 20),

                ),
                textAlign: TextAlign.center,
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Alter',
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("Skip"),
                    onPressed: (){
                      for(int i=0; i<2; i++){
                        Navigator.pop(context);
                      }
                    },
                  ),
                  RaisedButton(
                    child: Text("Weiter"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => journeyWidgetTwo()));
                    },
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}

class journeyWidgetTwo extends StatefulWidget {
  journeyWidgetTwo({Key key}) : super(key: key);

  @override
  _JourneyWidgetTwoState createState() => _JourneyWidgetTwoState();
}

class _JourneyWidgetTwoState extends State<StatefulWidget> {
  int selectedRadioTile;

  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  setPrefs(String val) async{
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('val1', val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dein Intro"),
      ),
      body: Container(
          child: Wrap(
            direction: Axis.horizontal,
            children: [
              RichText(
                text: TextSpan(
                  text: "Welcher Gruppe würdest du dich zuordnen? \n",
                  style: TextStyle(color: Colors.black87, fontSize: 20),

                ),
                textAlign: TextAlign.center,
              ),
              RadioListTile(
                value: 1,
                groupValue: selectedRadioTile,
                title: Text("Schüler"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                  setPrefs("Schüler");
                },
                activeColor: Colors.black,
                selected: true,
              ),
              RadioListTile(
                value: 2,
                groupValue: selectedRadioTile,
                title: Text("Student"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                  setPrefs("Student");
                },
                activeColor: Colors.black,
                selected: false,
              ),
              RadioListTile(
                value: 3,
                groupValue: selectedRadioTile,
                title: Text("Angestellter"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                  setPrefs("Angestellter");
                },
                activeColor: Colors.black,
                selected: false,
              ),
              RadioListTile(
                value: 4,
                groupValue: selectedRadioTile,
                title: Text("Selbstständiger"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                  setPrefs("Selbstständiger");
                },
                activeColor: Colors.black,
                selected: false,
              ),
              RadioListTile(
                value: 5,
                groupValue: selectedRadioTile,
                title: Text("Arbeitssuchender"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                  setPrefs("Arbeitssuchender");
                },
                activeColor: Colors.black,
                selected: false,
              ),
              RadioListTile(
                value: 6,
                groupValue: selectedRadioTile,
                title: Text("Anderes"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                  setPrefs("Anderes");
                },
                activeColor: Colors.black,
                selected: false,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("Skip"),
                    onPressed: (){
                      for(int i=0; i<3; i++){
                        Navigator.pop(context);
                      }
                    },
                  ),
                  RaisedButton(
                    child: Text("Weiter"),
                    onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context) => journeyWidgetThree()));
                    },
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}

class journeyWidgetThree extends StatefulWidget {
  journeyWidgetThree({Key key}) : super(key: key);

  @override
  _JourneyWidgetThreeState createState() => _JourneyWidgetThreeState();
}

class _JourneyWidgetThreeState extends State<StatefulWidget> {
  int selectedRadioTile;

  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dein Intro"),
      ),
      body: Container(
          child: Wrap(
            direction: Axis.horizontal,
            children: [
              RichText(
                text: TextSpan(
                  text: "Ich habe [...] finanzielles Wissen.\n",
                  style: TextStyle(color: Colors.black87, fontSize: 20),

                ),
                textAlign: TextAlign.center,
              ),
              RadioListTile(
                value: 1,
                groupValue: selectedRadioTile,
                title: Text("kein"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.black,
                selected: true,
              ),
              RadioListTile(
                value: 2,
                groupValue: selectedRadioTile,
                title: Text("grundlegendes"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.black,
                selected: false,
              ),
              RadioListTile(
                value: 3,
                groupValue: selectedRadioTile,
                title: Text("erweitertes"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.black,
                selected: false,
              ),
              RadioListTile(
                value: 4,
                groupValue: selectedRadioTile,
                title: Text("fortgeschrittenes"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.black,
                selected: false,
              ),
              RadioListTile(
                value: 5,
                groupValue: selectedRadioTile,
                title: Text("großes"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.black,
                selected: false,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("Skip"),
                    onPressed: (){
                      for(int i=0; i<4; i++){
                        Navigator.pop(context);
                      }
                    },
                  ),
                  RaisedButton(
                    child: Text("Weiter"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => journeyWidgetFour()));
                    },
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}

class journeyWidgetFour extends StatefulWidget {
  journeyWidgetFour({Key key}) : super(key: key);

  @override
  _JourneyWidgetFourState createState() => _JourneyWidgetFourState();
}

class _JourneyWidgetFourState extends State<StatefulWidget> {
  int selectedRadioTile;

  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dein Intro"),
      ),
      body: Container(
          child: Wrap(
            direction: Axis.horizontal,
            children: [
              RichText(
                text: TextSpan(
                  text: "Ich will mehr Wiessen über: \n",
                  style: TextStyle(color: Colors.black87, fontSize: 20),

                ),
                textAlign: TextAlign.center,
              ),
              RadioListTile(
                value: 1,
                groupValue: selectedRadioTile,
                title: Text("Steuern"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.black,
                selected: true,
              ),
              RadioListTile(
                value: 2,
                groupValue: selectedRadioTile,
                title: Text("Versicherungen"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.black,
                selected: false,
              ),
              RadioListTile(
                value: 3,
                groupValue: selectedRadioTile,
                title: Text("Unternehmertum"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.black,
                selected: false,
              ),
              RadioListTile(
                value: 4,
                groupValue: selectedRadioTile,
                title: Text("Investment"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.black,
                selected: false,
              ),
              RadioListTile(
                value: 5,
                groupValue: selectedRadioTile,
                title: Text("Studiumsfinanzierung"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.black,
                selected: false,
              ),
              RadioListTile(
                value: 6,
                groupValue: selectedRadioTile,
                title: Text("Erste eigene Wohnung"),
                onChanged: (val) {
                  setSelectedRadioTile(val);
                },
                activeColor: Colors.black,
                selected: false,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("Skip"),
                    onPressed: (){
                      for(int i=0; i<5; i++){
                        Navigator.pop(context);
                      }
                    },
                  ),
                  RaisedButton(
                    child: Text("Weiter"),
                    onPressed: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => journeyWidgetFive()));
                    },
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}