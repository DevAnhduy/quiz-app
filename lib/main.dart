// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

const questions = [
  {
    'questionText': "What's is your favorite color?",
    'answers': ['Black', 'Red', 'Green', 'White']
  },
  {
    'questionText': "What's your favorite animal",
    'answers': ['Cat', 'Dog', 'Rabbit', 'Snake']
  },
  {
    'questionText': "Something question",
    'answers': ['1', '2', '3', '4']
  }
];

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('My First App')),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'] as String,
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) => Answer(_answerQuestion, answer))
                  .toList(),
            ],
          )),
    );
  }
}
