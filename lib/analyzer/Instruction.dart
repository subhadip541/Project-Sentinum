import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Instruction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'How to use'
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              '1.Twitter',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Quicksand",
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '     To analyse your account in the',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 17,
              fontFamily: "Quicksand",
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Image(
            image: AssetImage('images/SS new.png'),
          ),
          Text(
            '     enter the twitter username which is depicted in the pictures',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 17,
              fontFamily: "Quicksand",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Image(
              image: AssetImage('images/annoation2.jpg'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Image(
              image: AssetImage('images/annoation1.jpg'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '     enter the respective username and the press analyze button',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 17,
              fontFamily: "Quicksand",
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Image(
              image: AssetImage('images/SS1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
