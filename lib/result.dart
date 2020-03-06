import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    if (totalScore > 10) {
      return "You are not good and You Scored: $totalScore";
    } else {
      return "You are awesome and You Scored: $totalScore";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetQuiz,
              child: Text("Attemp Other",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 28.0,
                  )))
        ],
      ),
    );
  }
}
