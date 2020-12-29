import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Insta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.red.shade500,
        title: Text(
          'Instagram Analyzer',
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
              backgroundImage: AssetImage('images/instafinal.png'),

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
                title:
                TextField(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade300,
                  ),
                  //controller: mycontroller,
                  decoration: InputDecoration(
                    fillColor: Colors.red.shade300,
                    border: InputBorder.none,
                    labelText: 'Enter Username',
                    labelStyle:  new TextStyle( color: Colors.white, fontSize: 20.0, fontFamily: "Quicksand",),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 120,
              child: RaisedButton(
                color: Colors.red.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Text(
                  'Analyze',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.bold,
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
