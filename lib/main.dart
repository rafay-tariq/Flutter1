import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    print('Correct Answer');
    setState(() {
      questionIndex = questionIndex + 1;
      // var maxlength = question.length;
      // print(maxlength);
      // if (questionIndex >= maxlength) {
      //   questionIndex = 0;
      // }
    });

    print(questionIndex);
  }

  var question = [
    {
      'question': 'what\'s your fav color?',
      'answer': ['red', 'black', 'yellow'],
    },
    {
      'question': 'what\'s your fav animal?',
      'answer': ['rabbit', 'snake', 'elephant'],
    },
    {
      'question': 'what\'s your fav instructor?',
      'answer': ['maps', 'maps', 'maps', 'maps'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("PkAdmissions")),
        body: questionIndex < question.length
            ? Quiz(questionIndex: questionIndex , question: question, answerQuestion: answerQuestion)
            : Result()
      ),
    );
  }
}




























// import 'package:flutter/material.dart';
// import './tempQuestion.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<String> questionsInput = [
//     'Please introduce yourself',
//     'what\'s your name?',
//     'what\'s your city name? ',
//     'what\'s your fav Course? ',
//     'what\'s your country name? ',
//   ];

//   void delQuestion() {
//     setState(() {
//       questionsInput.removeLast();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: Text("Press To Delete Question")),
//           body: Column(
//             children: <Widget>[
//               TempQuestion(questionsInput),
//               RaisedButton(
//                 child: Text('Delete Question'),
//                 onPressed: delQuestion,
//               )
//             ],
//           )),
//     );
//   }
// }
