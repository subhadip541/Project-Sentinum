import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sample/analyzer/Plot.dart';
import 'dart:async';

class Model {
  final double result;
  Model({this.result});
  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      result: json['result'],
    );
  }
}

Future<Model> fetchmodel(value) async {
  final call = await http.get('API_URL/$value');
  if (call.statusCode == 200) {
    return Model.fromJson(json.decode(call.body));
  } else if (call.statusCode == 204) {
    return Future.error("User Id not found");
  } else {
    return Future.error("Internal Server error");
  }
}

int format(double n) {
  return n.round();
}

Future navigateToPlot(context, percentage) async {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => Plot(percentage: percentage)));
}

class Twitter extends StatefulWidget {
  @override
  _TwitterState createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var mycontroller = TextEditingController();
  String message = "";
  bool pressAttention = false;
  invokeapi(BuildContext context) {
    disableAnalyze();
    FocusScope.of(context).unfocus();
    fetchmodel(mycontroller.text).then((retvalue) {
      setState(() {
        int percentage = format(retvalue.result * 100);
        navigateToPlot(context, percentage);
      });
      enableAnalyze();
    }, onError: (error) {
      setState(() {
        message = error;
        showOverlay(context);
      });
      enableAnalyze();
    });
  }

  enableAnalyze() {
    setState(() {
      pressAttention = false;
    });
  }

  disableAnalyze() {
    setState(() {
      pressAttention = true;
    });
  }

  showOverlay(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Material(
        type: MaterialType.transparency,
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.45),
          child: Text(
            "$message",
            style: TextStyle(
              color: Colors.red,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
    overlayState.insert(overlayEntry);
    await Future.delayed(Duration(seconds: 1));
    overlayEntry.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Twitter Analyzer',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('images/twitterlogo.png'),
              radius: 50,
            ),
            Card(
              //color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.supervised_user_circle,
                  size: 30,
                  color: Colors.white,
                ),
                title: TextField(
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold),
                  controller: mycontroller,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    labelText: 'Enter Username :',
                    labelStyle: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Quicksand",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 120,
              height: 50,
              child: RaisedButton(
                color: pressAttention ? Colors.grey : Colors.lightBlue,
                onPressed: pressAttention ? null : () => invokeapi(context),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Text(
                  'Analyze',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Quicksand"),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
/*Center(
child: new BackdropFilter(
filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 21.0),
child: new Container(
width: double.infinity,
height: double.infinity,
decoration: new BoxDecoration(
color: Colors.grey.withOpacity(.5)
),

),
),
),

 */
/*Center(
child: Text(
'$message',
style: TextStyle(
fontSize: 35,
fontWeight: FontWeight.bold,
color: Colors.red,
),
),
)*/
