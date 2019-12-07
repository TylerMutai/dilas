import 'package:dilas/sections.dart';
import 'package:flutter/widgets.dart';

class Objects extends Sections {
  static final double width = 200;
  static final double height = 200;
  List objects = <Widget>[
    Column(
      children: <Widget>[
        Image(
          image: AssetImage("images/objects_main.png"),
          width: width,
          height: height,
        ),
        Sections.getColoredText("Car")
      ],
    ),
    Column(
      children: <Widget>[
        Image(
          image: AssetImage("images/bus_icon.jpg"),
          width: width,
          height: height,
        ),
        Sections.getColoredText("Bus")
      ],
    ),
    Column(
      children: <Widget>[
        Image(
          image: AssetImage("images/truck_icon.jpg"),
          width: width,
          height: height,
        ),
        Sections.getColoredText("Truck")
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage("images/train_icon.jpg"),
          width: width,
          height: height,
        ),
        Sections.getColoredText("Train")
      ],
    ),
    Column(
      children: <Widget>[
        Image(
          image: AssetImage("images/table_icon.jpg"),
          width: width,
          height: height,
        ),
        Sections.getColoredText("Table")
      ],
    ),
  ];

  List textsArray = ["Car", "Bus", "Track", "Train", "Table"];
  int currentPosition = -1;

  @override
  Widget next() {
    if (currentPosition == objects.length - 1) {
      speakText(textsArray[currentPosition]);
      return objects[currentPosition];
    }
    currentPosition++;
    speakText(textsArray[currentPosition]);
    return objects[currentPosition];
  }

  @override
  Widget previous() {
    if (currentPosition == 0) {
      speakText(textsArray[currentPosition]);
      return objects[currentPosition];
    }
    currentPosition--;
    speakText(textsArray[currentPosition]);
    return objects[currentPosition];
  }

  void speakText(String text) {
    speechUtilities.speak(text);
  }
}
