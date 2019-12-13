import 'package:flutter/material.dart';
import 'package:flutter_assignment/textControl.dart';
import './textControl.dart';

class TextChange extends StatelessWidget {
  final String text;
  final Function foodHandler;
  TextChange(this.text, this.foodHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 130, 10, 130),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
            TextControl(foodHandler),
          ],
    ));
  }
}
