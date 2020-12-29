import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.blue.shade800,
        title: Text(
          'Facebook Analyzer',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Text(
              "Still under development. Try again later.",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontFamily: "Quicksand",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('images/fblogo1.png'),

              radius: 50,

            ),
            Card(
            //  color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.supervised_user_circle,
                  size: 30,
                 color: Colors.white,

                ),
                title:
                TextField(
                  style: TextStyle(
                    fontSize: 20,
                    //color: Colors.blue.shade800,
                  ),
                  //controller: mycontroller,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    labelText: 'Enter Username',
                    labelStyle:  new TextStyle(color: Colors.white, fontSize: 20.0,fontFamily: "Quicksand"),
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
                color: Colors.blue.shade800,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Text(
                  'Analyze',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold, fontFamily: "Quicksand"
                  ),
                ),
                onPressed: (){

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
