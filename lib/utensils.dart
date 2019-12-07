import 'package:dilas/sections.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class Utensils extends Sections{
  static final double width = 200;
  static final double height = 200;
  List utensils = <Widget>[
    Column(
      children: <Widget>[
        Image(
          image: AssetImage("images/spoon_icon.png"),
          width: width,
          height: height,
        ),
        Sections.getColoredText("Spoon")
      ],
    )
    ,
    Column(
      children: <Widget>[
        Image(
          image: AssetImage("images/fork_icon.jpg"),
          width: width,
          height: height,
        ),
        Sections.getColoredText("Fork")
      ],
    )
    ,
    Column(
      children: <Widget>[
        Image(
          image: AssetImage("images/knife_icon.jpg"),
          width: width,
          height: height,
        ),
        Sections.getColoredText("Knife")
      ],
    )
    ,
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage("images/cutting_board_icon.jpg"),
          width: width,
          height: height,
        ),
        Sections.getColoredText("Cutting Board")
      ],
    )
    ,
    Column(
      children: <Widget>[
        Image(
          image: AssetImage("images/cooking_pan_icon.jpg"),
          width: width,
          height: height,
        ),
        Sections.getColoredText("Cooking Pan")
      ],
    )
    ,
  ];
  int currentPosition = -1;

  List textsArray = ["Spoon", "Fork", "Knife", "Cutting Board", "Cooking Pan"];

  @override
  Widget next() {
    if(currentPosition == utensils.length - 1){
      speakText(textsArray[currentPosition]);
      return utensils[currentPosition];
    }
    currentPosition++;
    speakText(textsArray[currentPosition]);
    return utensils[currentPosition];
  }

  @override
  Widget previous() {
    if(currentPosition == 0){
      speakText(textsArray[currentPosition]);
      return utensils[currentPosition];
    }
    currentPosition--;
    speakText(textsArray[currentPosition]);
    return utensils[currentPosition];
  }

  void speakText(String text) {
    speechUtilities.speak(text);
  }

}