import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function foodHandler;
  TextControl(this.foodHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 130, 10, 10),
      child: RaisedButton(
        child: Text(
          'เดียร์ไม่อยากกิน เดียร์ขอเปลี่ยนใหม่',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        color: Colors.pink,
        onPressed: foodHandler,

      ),
    );
  }
}
