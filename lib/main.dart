// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'dart:math';
import './textChange.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State {
  final _food = const [
    'ข้าวผัดกะเพรา',
    'Spagetthi',
    'Sushi',
    'Omakase',
    'Somtum',
    'Kanom',
    'Pesto',
    'Jello',
    'Banoffe',
    'ข้าวคลุกแมว'
  ];

  var _foodIndex = 0;

  void _foodHandler() {
    setState(() {
      _foodIndex = Random().nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'วันนี้น้องเดียร์กินอะไรดี??',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      body: TextChange(_food[_foodIndex], _foodHandler),
    ));
  }
}
