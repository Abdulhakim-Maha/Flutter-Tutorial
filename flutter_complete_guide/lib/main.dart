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
  final questions = const [
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
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if (questionIndex < questions.length) {
        questionIndex = 0;
      } else {
        questionIndex = questionIndex + 1;
      }
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: questionIndex < questions.length
          ? Column(
              children: <Widget>[
                Question(
                  questionText: questions[questionIndex]['questionText'],
                ),
                ...(questions[questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Answer(
                    selectHandler: answerQuestion,
                    answerText: answer,
                  );
                }).toList()
              ],
            )
          : Center(
              child: Text('You did it!'),
            ),
    ));
  }
}
