import 'package:flutter/material.dart';
import './question.dart';

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
    });
   
    print(questionIndex);
  }

  var question = [
    'what\'s your fav color?',
    'what\'s your nick name?',
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("PkAdmissions")),
        body: Column(
          children: <Widget>[
            Question(question: question[questionIndex], ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () {
                print('Other Answer Choosenn');
              },
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
