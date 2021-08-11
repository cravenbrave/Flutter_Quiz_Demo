import 'package:flutter/material.dart';

import './question.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _qIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    //let flutter rebuild the screen
    //without setState, it won't update/render the screen, even you do
    //changed the parameters
    //call build method again, we can limit the setState on one specific
    //widget only
    setState(() {
      if (_qIndex < _questions.length) {
        _qIndex++;
      }
    });
    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _qIndex = 0;
    });
  }
  //map array, value and key can be every thing, like array, int, string etc
  final _questions = const [
    {
      'question': 'Is WW cute?',
      'answer': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
        {'text': 'Not sure', 'score': 1}
      ],
    },
    {
      'question': 'Is Liuxiaomi cute?',
      'answer': [
        {'text': 'Very cute', 'score': 3},
        {'text': 'Super cute', 'score': 3},
        {'text': 'Definitely cute', 'score': 3}
      ],
    },
    {
      'question': 'Is WY cute?',
      'answer': [{'text': 'Very cute', 'score': 3},
        {'text': 'Super cute', 'score': 3},
        {'text': 'Definitely cute', 'score': 3}],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //body background color
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          //appbar background color
          backgroundColor: Color.lerp(Colors.blueAccent, Colors.grey, 0.5),

          title: Container(
            //text background color
            // color: Colors.white,
            child: Text(
              'Quiz demo',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        //Conditional:
        //condition ? if true run this : else run this
        body: _qIndex < _questions.length
            ? Question(
                answerQuestion: _answerQuestion,
                qIndex: _qIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
