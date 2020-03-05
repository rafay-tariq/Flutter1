import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final question;
  final Function answerQuestion;

  Quiz({
    @required this.questionIndex,
    @required this.question,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      //if it is ture
      children: <Widget>[
        Question(
          question: question[questionIndex]['question'],
        ),
        ...(question[questionIndex]['answer'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    ));
  }
}
