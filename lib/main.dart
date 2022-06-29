import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var questions = [
    "what's your favorate color?",
    "what's your favorate animal?",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("my first app"),
        ),
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(child: Text("Answer 1"), onPressed: null),
            ElevatedButton(onPressed: null, child: Text('Answer 2')),
            ElevatedButton(onPressed: null, child: Text('Answer 3'))
          ],
        ),
      ),
    );
  }
}
