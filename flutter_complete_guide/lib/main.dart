import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answer': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answer': ['Rabbit', 'Snake', 'Elephant', 'Cat']
      },
      {
        'questionText': 'What\'s your favorite game?',
        'answer': ['Valorant', 'Rov', 'Dead by day light', 'Fifa']
      },
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: <Widget>[
          Question(
            questionText: questions[questoinIndex]['questionText'],
          ),
          ...(questions[questoinIndex]['answer'] as List<String>).map((answer) {
            return Answer(
              selectHandler: answerQuestion,
              answerText: answer,
            );
          }).toList()
        ],
      ), // body only put one widget
    ));
  }
}
