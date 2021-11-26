import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questoinIndex = 0;

  void answerQuestion() {
    setState(() {
      if (questoinIndex == 1) {
        questoinIndex = 0;
      } else {
        questoinIndex = questoinIndex + 1;
      }
    });
    print(questoinIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: <Widget>[
          Question(
            questionText: questions[questoinIndex],
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => print('Answer 2 chosen!'),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => print('Answer 3 chosen!'),
          ),
        ],
      ), // body only put one widget
    ));
  }
}
