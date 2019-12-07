import 'package:flutter/material.dart';

class GenerateColours{

  List materialColors = [Colors.green,Colors.redAccent,Colors.purpleAccent,Colors.yellow,Colors.orange,Colors.amber];
  int position = -1;

  Color getColor(){
    position++;
    if(position >= materialColors.length){
      position = 0;
    }
    return materialColors[position];
  }
}