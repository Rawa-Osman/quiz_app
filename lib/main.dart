// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "what's your favorate color?",
      'answers': [
        {'text': 'white', 'score': 1},
        {'text': 'red', 'score': 7},
        {'text': 'black', 'score': 10},
        {'text': 'pink', 'score': 5},
      ],
    },
    {
      'questionText': "what's your favorate animal?",
      'answers': [
        {'text': 'cat', 'score': 1},
        {'text': 'lion', 'score': 7},
        {'text': 'dog', 'score': 10},
        {'text': 'elephant', 'score': 5},
      ],
    },
    {
      'questionText': "what's your favorate instructor?",
      'answers': [
        {'text': 'Rawa', 'score': 1},
        {'text': 'Rawa', 'score': 1},
        {'text': 'Rawa', 'score': 1},
        {'text': 'Rawa', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int _score) {
    _totalScore += _score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my first app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: ((() => _answerQuestion(0))),
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
