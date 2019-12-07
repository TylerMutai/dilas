import 'package:dilas/speech_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'generate_colors.dart';

abstract class Sections{
  static GenerateColours generateColours = new GenerateColours();
  SpeechUtilities speechUtilities = new SpeechUtilities();
  Widget next();
  Widget previous();
  static Widget getColoredText(String text) {
    List children = new List<Widget>(text.length);
    for (int i = 0; i < text.length; i++) {
      Widget textField = Text(
        text.substring(i, i + 1),
        style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: generateColours.getColor()),
      );
      children[i] = (textField);
    }
    return Row(
      children: children,
    );
  }
}