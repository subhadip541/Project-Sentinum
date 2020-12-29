import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Plot extends StatelessWidget {
  final int percentage;

  const Plot({Key key, this.percentage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int copy = percentage;
    Widget x;
    //double happy = copy / 100;
    Widget getwidget() {
      if (copy >= 90) {
        return Column(
          children: <Widget>[
            new CircularPercentIndicator(
              backgroundColor: Colors.red,
              radius: 230.0,
              lineWidth: 15.0,
              percent: percentage / 100,
              center: Icon(
                Icons.sentiment_very_satisfied,
                color: Colors.yellow,
                size: 100,
              ),
              progressColor: Colors.green,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "You're in the best mood. Keep it up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.yellow,
                    fontFamily: "Quicksand",
                  ),
                ),
              ),
            ),
          ],
        );
      } else if (copy >= 75 && copy < 90) {
        return Column(
          children: <Widget>[
            new CircularPercentIndicator(
              backgroundColor: Colors.red,
              radius: 230.0,
              lineWidth: 15.0,
              percent: percentage / 100,
              center: Icon(
                Icons.sentiment_satisfied,
                color: Colors.yellowAccent,
                size: 100,
              ),
              progressColor: Colors.green,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "You're going great. You just need some enjoyment",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.yellowAccent,
                    fontFamily: "Quicksand",
                  ),
                ),
              ),
            ),
          ],
        );
      } else if (copy >= 60 && copy < 75) {
        return Column(
          children: <Widget>[
            new CircularPercentIndicator(
              backgroundColor: Colors.red,
              radius: 230.0,
              lineWidth: 15.0,
              percent: percentage / 100,
              center: Icon(
                Icons.sentiment_neutral,
                color: Colors.orangeAccent,
                size: 100,
              ),
              progressColor: Colors.green,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "You just need to go out and enjoy your life",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Quicksand",
                    fontSize: 20,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ),
          ],
        );
      } else if (copy >= 40 && copy < 60) {
        return Column(
          children: <Widget>[
            new CircularPercentIndicator(
              backgroundColor: Colors.red,
              radius: 230.0,
              lineWidth: 15.0,
              percent: percentage / 100,
              center: Icon(
                Icons.sentiment_dissatisfied,
                color: Colors.orange,
                size: 100,
              ),
              progressColor: Colors.green,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "Hey, take care of yourself. Enjoy your life",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.orange,
                    fontFamily: "Quicksand",
                  ),
                ),
              ),
            ),
          ],
        );
      } else {
        return Column(
          children: <Widget>[
            new CircularPercentIndicator(
              backgroundColor: Colors.red,
              radius: 230.0,
              lineWidth: 15.0,
              percent: percentage / 100,
              center: Icon(
                Icons.sentiment_very_dissatisfied,
                color: Colors.deepOrange,
                size: 100,
              ),
              progressColor: Colors.green,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "Hey, please take care of yourself and talk to someone close. You need extra care",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.deepOrange,
                    fontFamily: "Quicksand",
                  ),
                ),
              ),
            ),
          ],
        );
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sentinum Result",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*.50,
                  height: MediaQuery.of(context).size.height*.32,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0),
                        bottomRight: const Radius.circular(20.0),
                      ),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.white12,
                          blurRadius: 20.0,
                        ),
                      ]),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*.1,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Percentage of Happines',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Quicksand",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*.15,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '$copy' + '%',
                            style: TextStyle(
                              fontSize: 80,
                              fontFamily: "Satisfy",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            getwidget(),
          ],
        ),
      ),
    );
  }
}
