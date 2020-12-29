import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "The main motive behind this project is to predict the mental health of a person during the lockdown period. The pandemic has greatly impacted the daily lives of ours. To know the extent of how much a person has been affected by this lockdown, we have created this project. When a person is locked-up in his home, he/she express his/her emotion through social media posts. Also in day-to-day lives, humans being social creatures tends to express their feelings on social media where they can communicate and interact with more number of people. Usually, unknowingly social media users tend to express their mental state through their posts and interactions. Our intention is to analyze their posts, tweets, and various other interactions to determine the state of mind or the emotional polarity of that particular individual. We have named this project “Sentinum”. As we are analyzing the sentiment of the user, so “Senti” derived from sentiment and because we are using Machine Learning algorithm which is based on numericals, so “Num” derived from numericals ."
                ,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Quicksand",
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
