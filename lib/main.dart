import 'dart:typed_data';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print('Answer chosen');
    print(questionIndex);
  }

  var questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WhichCar'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questions.elementAt(questionIndex),
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => {print('This anonymouse qn')},
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () {
                print('different answer qn');
              },
            ),
          ],
        ),
      ),
    );
  }
}
