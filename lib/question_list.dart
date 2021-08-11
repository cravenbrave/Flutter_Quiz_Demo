import 'package:flutter/material.dart';

class QuestionList extends StatelessWidget {
  final String questionText;

  QuestionList(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //used to set the container's inside space
      padding: const EdgeInsets.all(10.0),
      //used to set the container's outside space
      margin: EdgeInsets.all(10.0),
      //used to set the container's border
      // decoration: BoxDecoration(
      //   shape: BoxShape.rectangle,
      //   border: Border.all(),
      // ),
      //used to set the container's width to the infinity of the screen
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue),
        textAlign: TextAlign.center,
      ),
    );
  }
}
