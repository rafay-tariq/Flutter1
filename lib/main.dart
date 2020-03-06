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
  int _totalScore = 0;

  void resetQuiz(){
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }
  
  void answerQuestion(int score) {
    print('Correct Answer');
    setState(() {
      questionIndex = questionIndex + 1;
      _totalScore+= score;
      print(_totalScore);
    });

    print(questionIndex);
  }

  var question = [
    {
      'question': 'what\'s your fav color?',
      'answer': [
        {'text': 'red', 'score': 2},
        {'text': 'black', 'score': 10},
        {'text': 'yellow', 'score': 6},
      ],
    },
    {
      'question': 'what\'s your fav animal?',
      'answer': [
        {'text': 'rabbit', 'score': 2},
        {'text': 'snake', 'score': 10},
        {'text': 'elephant', 'score': 8},
      ],
    },
    {
      'question': 'what\'s your fav instructor?',
      'answer': [
        {'text': 'maps', 'score': 1},
        {'text': 'maps', 'score': 1},
        {'text': 'maps', 'score': 1},
        {'text': 'maps', 'score': 1},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("PkAdmissions")),
          body: questionIndex < question.length
              ? Quiz(
                  questionIndex: questionIndex,
                  question: question,
                  answerQuestion: answerQuestion)
              : Result(_totalScore, resetQuiz)),
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
