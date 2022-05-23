// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('My First App')),
            body: _questionIndex < questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: questions,
                  )
                : const Result()));
  }
}
