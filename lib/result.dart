import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  final VoidCallback resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  //getter method, return type, method type, method name
  String get resultString {
    String first = 'All questions are answered :)\n';
    if (totalScore < 7) {
      first += '\nWW is not cute at all!';
    } else {
      first += '\nWW is super cute!';
    }
    return first;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultString,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          //flatbutton is button without background color
          TextButton(
            onPressed: resetQuiz,
            child: Container(
              margin: EdgeInsets.only(top: 100),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                // border: Border.all(width: 0.1,),
                color: Color.lerp(Colors.blueAccent, Colors.grey, 0.5),
              ),
              child: Text(
                'Restart Quiz',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
