import 'package:dilas/generate_colors.dart';
import 'package:dilas/speech_utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sections.dart';

class ModalWindow extends StatefulWidget {
  final String title;
  final Sections sections;

  ModalWindow(this.title, this.sections);

  @override
  State<StatefulWidget> createState() {
    return ModalWindowState(title, sections);
  }
}

class ModalWindowState extends State<ModalWindow> {
  String title = "";
  Sections sections;
  Widget bodyText;

  ModalWindowState(String title, Sections sections) {
    this.title = title;
    this.sections = sections;
    bodyText = sections.next();
  }

  GenerateColours generateColours = new GenerateColours();

  @override
  Widget build(BuildContext context) {
    // set up the button
    Widget closeButton = GestureDetector(
      child: Text(
        "X",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 50, color: Colors.redAccent),
      ),
      onTap: () {
        Navigator.of(context).pop();
      },
    );

    Widget nextButton = FlatButton(
      child: Image(
        image: AssetImage("images/next_icon.jpg"),
        width: 60,
        height: 60,
      ),
      onPressed: () {
        setState(() {
          bodyText = sections.next();
        });
      },
    );

    Widget previousButton = FlatButton(
      child: Image(
        image: AssetImage("images/previous_icon.jpg"),
        width: 60,
        height: 60,
      ),
      onPressed: () {
        setState(() {
          bodyText = sections.previous();
        });
      },
    );

    Widget pauseButton = FlatButton(
      child: Image(
        image: AssetImage("images/pause_icon.png"),
        width: 60,
        height: 60,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    Widget celebration = Image(
      image: AssetImage("images/congratulations.gif"),
      width: MediaQuery.of(context).size.width,
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.blueAccent, width: 3))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                alignment: Alignment.center, child: getColoredText(title)),
            Align(
              child: closeButton,
              alignment: Alignment.centerRight,
            )
          ],
        ),
      ),
      content: Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.blueAccent, width: 3))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            /*Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    "After you have finished repeating, Press",
                  ),
                ),
                Image(
                  image: AssetImage("images/thumbs_up.gif"),
                  width: 40,
                  height: 40,
                ),
              ],
            ),*/
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: bodyText,
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: FlatButton(
                child: Image(
                  image: AssetImage("images/thumbs_up.gif"),
                  width: 60,
                  height: 60,
                ),
                onPressed: () {
                 setState(() {
                   bodyText = celebration;
                 });
                },
              ),
            ),

          ],
        ),
      ),
      actions: [
        previousButton,
        pauseButton,
        nextButton,
      ],
    );
    return alert;
  }

  Widget getColoredText(String text) {
    List children = new List<Widget>(text.length);
    for (int i = 0; i < text.length; i++) {
      Widget textField = Text(
        text.substring(i, i + 1),
        style: TextStyle(
            fontSize: 40,
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
