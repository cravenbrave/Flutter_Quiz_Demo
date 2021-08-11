import 'package:flutter/material.dart';
import './question_list.dart';
import './answer_list.dart';

class Question extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qIndex;
  final Function(int) answerQuestion;
  Question(
      {required this.questions,
       required this.qIndex,
       required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //map array index and map key, all use []
        //add as String for the new version
        QuestionList(
          //set to string and pass it to Question widget
          //also tells dart it is always a non-null value
          questions[qIndex]['question'] as String,
        ),
        //super complicated
        //... means spread operator
        //it pulls the new list content all as an individual value, to avoid
        //nested list (Column is a list)
        //as List<String> means let dart know it is a array, for map to iterate
        //map is an iterator method, it takes the element from the array list
        //to Answer widget
        //Answer received the passing method and string then do something
        //.toList() means generating the Answer widget to a list instead
        ...(questions[qIndex]['answer'] as List<Map<String, Object>>).map((answer) {
          return AnswerList(() => answerQuestion(answer['score'] as int), answer['text'] as String);
        }).toList(),
        // Row(
        //   children: [
        //     Text('a'),
        //     Text('b'),
        //   ],
        // ),
      ],
    );
  }
}
