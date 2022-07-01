// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  final questions = const [
    {
      'questionText': "what's your favorate color?",
      'answers': ['white', 'red', 'black', 'pink'],
    },
    {
      'questionText': "what's your favorate animal?",
      'answers': ['dog', 'cat', 'snake', 'elephant'],
    },
    {
      'questionText': "what's your favorate instructor?",
      'answers': ['Rawa', 'Rawa', 'Rawa', 'Rawa'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuesrion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my first app"),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuesrion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('you did it!'),
              ),
      ),
    );
  }
}
