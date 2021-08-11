import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnswerList extends StatelessWidget {
  //by adding this method is to help Answer accepting method from main
  //without creating a new function here
  final VoidCallback selectHandler;
  final String answerList;

  AnswerList(this.selectHandler, this.answerList);
  @override
  Widget build(BuildContext context) {
    return Container(
      //used to set up the whole container's size
      // width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          //used to set up text color
          foregroundColor: MaterialStateProperty.all(Colors.amberAccent),
          //used to set up text background color
          backgroundColor: MaterialStateProperty.all(Color.lerp(Colors.blueAccent, Colors.grey, 0.5)),
          //used to set up button size
          fixedSize: MaterialStateProperty.all(Size.fromWidth(300)),
        ),
       /**
        //alternative way for setting style
        style: ElevatedButton.styleFrom(
          //primary changing for background
          primary: Colors.amberAccent,
          //on primary changing for text
          onPrimary: Colors.amberAccent,
        ),*/
        onPressed: selectHandler,
        child: Text(
            answerList,
            style: TextStyle(fontSize: 20),
      ),
      ),

      /*
      or
      RaisedButton(
              color: Colors.blueAccent,
              onPressed: _answerQuestion,
              child: Text('Answer 2'),
            )
       */
    );
  }
}
