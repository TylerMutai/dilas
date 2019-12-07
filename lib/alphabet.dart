import 'package:dilas/sections.dart';
import 'package:flutter/widgets.dart';

import 'generate_colors.dart';

class Alphabet extends Sections{
  //Contains helper methods and other functionality for altering the Alphabet class.

  final List alphabet =  ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u",
  "v","w","x","y","z"];
  int currentPosition = -1;
  GenerateColours generateColours = new GenerateColours();

  String toUpperCase(String letter){
    return letter.toUpperCase();
  }

  String formatString(String letter){
    String formattedString = "";
    formattedString+=toUpperCase(letter);
    formattedString+=" " + letter;
    return formattedString;
  }

  Widget next(){
    if(currentPosition == alphabet.length - 1) return generateTextWidget(formatString(alphabet[currentPosition]));
    currentPosition++;
    return generateTextWidget(formatString(alphabet[currentPosition]));
  }

  Widget previous(){
    if(currentPosition == 0) return generateTextWidget(formatString(alphabet[currentPosition]));
    currentPosition--;
    return generateTextWidget(formatString(alphabet[currentPosition]));

  }

  Widget generateTextWidget(String text){
    speechUtilities.speak(text.split(" ")[0]);
    return Text(
     text,
      style: TextStyle(
          fontSize: 100,
          fontWeight: FontWeight.bold,
          color: generateColours.getColor()),
    );
  }
}