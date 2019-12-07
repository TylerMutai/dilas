import 'package:dilas/sections.dart';
import 'package:flutter/widgets.dart';

import 'generate_colors.dart';

class Numbers extends Sections {
  final List numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
  GenerateColours generateColours = new GenerateColours();
  int currentPosition = -1;

  @override
  Widget next() {
    if (currentPosition == numbers.length - 1) return generateTextWidget(numbers[currentPosition]);
    currentPosition++;
    return generateTextWidget(numbers[currentPosition]);
  }

  @override
  Widget previous() {
    if (currentPosition == 0) return generateTextWidget(numbers[currentPosition]);
    currentPosition--;
    return generateTextWidget(numbers[currentPosition]);
  }

  Widget generateTextWidget(String text){
    speechUtilities.speak(text);
    return Text(
      text,
      style: TextStyle(
          fontSize: 100,
          fontWeight: FontWeight.bold,
          color: generateColours.getColor()),
    );
  }
}
