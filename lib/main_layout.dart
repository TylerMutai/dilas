import 'package:dilas/alphabet.dart';
import 'package:dilas/modal_window.dart';
import 'package:dilas/speech_utilities.dart';
import 'package:dilas/utensils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'objects.dart';
import 'sections.dart';
import 'numbers.dart';

class MainLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainLayoutState();
  }
}

class MainLayoutState extends State<MainLayout> {
  SpeechUtilities speechUtilities = new SpeechUtilities();
  showAlertDialog(BuildContext context, String title, Sections sections) {
    ModalWindow modalWindow = ModalWindow(title, sections);

    // show the dialog
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return modalWindow;
        },
        barrierDismissible: false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: ListView(
        padding: EdgeInsets.only(top: 20),
        children: <Widget>[
          Container(
              child: Column(
            //Parent Element. This is the main element that nests all our other views.
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Row(
                  //A single row in our widget. In this case, the row will have two columns which will have two images.
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        showAlertDialog(context, "alphabet", new Alphabet());
                      },
                      child: Card(
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    "images/alphabet_main.jpg",
                                  ),
                                  fit: BoxFit.contain,
                                  width: 100,
                                  height: 100,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text('a',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueAccent,
                                        )),
                                    Text('l',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amberAccent,
                                        )),
                                    Text('p',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.cyanAccent,
                                        )),
                                    Text('h',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                        )),
                                    Text('a',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.greenAccent,
                                        )),
                                    Text('b',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.purpleAccent,
                                        )),
                                    Text('e',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber,
                                        )),
                                    Text('t',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pinkAccent,
                                        )),
                                  ],
                                ),
                                ButtonTheme.bar(
                                  // make buttons use the appropriate styles for cards
                                  child: ButtonBar(
                                    children: <Widget>[
                                      FlatButton(
                                        child: Image(
                                          image: AssetImage(
                                              "images/sound_icon.png"),
                                          fit: BoxFit.contain,
                                          width: 50,
                                        ),
                                        onPressed: () {
                                          performSpeech("alphabet");
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showAlertDialog(context, "objects", new Objects());
                      },
                      child: Card(
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    "images/objects_main.png",
                                  ),
                                  fit: BoxFit.contain,
                                  width: 100,
                                  height: 100,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text('o',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueAccent,
                                        )),
                                    Text('b',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amberAccent,
                                        )),
                                    Text('j',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.cyanAccent,
                                        )),
                                    Text('e',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                        )),
                                    Text('c',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.greenAccent,
                                        )),
                                    Text('t',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.purpleAccent,
                                        )),
                                    Text('s',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.amber,
                                        )),
                                  ],
                                ),
                                ButtonTheme.bar(
                                  // make buttons use the appropriate styles for cards
                                  child: ButtonBar(
                                    children: <Widget>[
                                      FlatButton(
                                        child: Image(
                                          image: AssetImage(
                                              "images/sound_icon.png"),
                                          fit: BoxFit.contain,
                                          width: 50,
                                        ),
                                        onPressed: () {
                                          performSpeech("objects");
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      showAlertDialog(context, "numbers", new Numbers());
                    },
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage(
                                  "images/numbers_main.jpg",
                                ),
                                fit: BoxFit.contain,
                                width: 100,
                                height: 100,
                              ),
                              Row(
                                children: <Widget>[
                                  Text('n',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent,
                                      )),
                                  Text('u',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amberAccent,
                                      )),
                                  Text('m',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.cyanAccent,
                                      )),
                                  Text('b',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.redAccent,
                                      )),
                                  Text('e',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.greenAccent,
                                      )),
                                  Text('r',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purpleAccent,
                                      )),
                                  Text('s',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber,
                                      )),
                                ],
                              ),
                              ButtonTheme.bar(
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    FlatButton(
                                      child: Image(
                                        image:
                                            AssetImage("images/sound_icon.png"),
                                        fit: BoxFit.contain,
                                        width: 50,
                                      ),
                                      onPressed: () {
                                        performSpeech("numbers");
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showAlertDialog(context, "utensils", new Utensils());
                    },
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage(
                                  "images/utensils_main.jpg",
                                ),
                                fit: BoxFit.contain,
                                width: 100,
                                height: 100,
                              ),
                              Row(
                                children: <Widget>[
                                  Text('u',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent,
                                      )),
                                  Text('t',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amberAccent,
                                      )),
                                  Text('e',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.cyanAccent,
                                      )),
                                  Text('n',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.redAccent,
                                      )),
                                  Text('s',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.greenAccent,
                                      )),
                                  Text('i',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purpleAccent,
                                      )),
                                  Text('l',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber,
                                      )),
                                  Text('s',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pinkAccent,
                                      )),
                                ],
                              ),
                              ButtonTheme.bar(
                                // make buttons use the appropriate styles for cards
                                child: ButtonBar(
                                  children: <Widget>[
                                    FlatButton(
                                      child: Image(
                                        image:
                                            AssetImage("images/sound_icon.png"),
                                        fit: BoxFit.contain,
                                        width: 50,
                                      ),
                                      onPressed: () {
                                        performSpeech("utensils");
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              )
            ],
          )),
        ],
      ),
    );
  }

  void performSpeech(String text) {
   speechUtilities.speak(text);
  }
}
