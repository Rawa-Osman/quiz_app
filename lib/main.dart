import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuesrion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var questions = [
    "what's your favorate color?",
    "what's your favorate animal?",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my first app"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuesrion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
                onPressed: () => print('answer 2 chosen'),
                child: Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  print("answer 3 chosen");
                },
                child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
