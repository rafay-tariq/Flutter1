// import 'package:flutter/material.dart';
// import './question.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {

//     return MyAppState();
//   }

// }

// class MyAppState extends State<MyApp> {
//   var questionIndex = 0;

//   void answerQuestion() {
//     print('Correct Answer');
//     setState(() {
//        questionIndex = questionIndex + 1;
//     });

//     print(questionIndex);
//   }

//   var question = [
//     'what\'s your fav color?',
//     'what\'s your nick name?',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("PkAdmissions")),
//         body: Column(
//           children: <Widget>[
//             Question(question: question[questionIndex], ),
//             RaisedButton(
//               child: Text("Answer 1"),
//               onPressed: answerQuestion,
//             ),
//             RaisedButton(
//               child: Text("Answer 2"),
//               onPressed: () {
//                 print('Other Answer Choosenn');
//               },
//             ),
//             RaisedButton(
//               child: Text("Answer 3"),
//               onPressed: null,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import './tempQuestion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> questionsInput = [
    'Please introduce yourself',
    'what\'s your name?',
    'what\'s your city name? ',
    'what\'s your fav Course? ',
    'what\'s your country name? ',
  ];

  void delQuestion() {
    setState(() {
      questionsInput.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Press To Delete Question")),
          body: Column(
            children: <Widget>[
              TempQuestion(questionsInput),
              RaisedButton(
                child: Text('Delete Question'),
                onPressed: delQuestion,
              )
            ],
          )),
    );
  }
}
