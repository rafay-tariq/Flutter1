import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question({@required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      
      child: Text(
        question,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 28.0,
           ),
          textAlign: TextAlign.center,
      ),
    );
  }
}
