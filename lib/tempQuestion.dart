import 'package:flutter/material.dart';

class TempQuestion extends StatelessWidget {
  final List<String> questionsInput;
  TempQuestion(this.questionsInput);

  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('$questionsInput', style: TextStyle(fontSize: 20.0),),
      ),
    );
  }
}
