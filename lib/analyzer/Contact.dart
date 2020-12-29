import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact us'),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Center(
              child: ClipOval(
                child: Image.asset(
                  "images/swap.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Swapnanil Dutta',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Pacifico',
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'CLOUD & PYTHON DEVELOPER',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                //fontFamily: 'SourceSansPro'
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.grey.shade300,
              ),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Icon(
                 Icons.mail,
                 color: Colors.grey.shade200,
                 size: 20,
               ),
               SizedBox(
                 width: 15,
               ),
               Text(
                 "swapnanildutta2000@gmail.com",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                   letterSpacing: .25,
                   fontFamily: "Quicksand",
                 ),
               )
             ],
           ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ClipOval(
                child: Image.asset(
                  "images/dip.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Subhadip Chowdhury',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Pacifico',
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                //fontFamily: 'SourceSansPro'
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.grey.shade300,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey.shade200,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "subhadip.ssv@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: .25,
                    fontFamily: "Quicksand",
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ClipOval(
                child: Image.asset(
                  "images/swag.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Swagato Patra',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Pacifico',
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'SERVER MANAGER',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                //fontFamily: 'SourceSansPro'
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.grey.shade300,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey.shade200,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "patraswagato@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: .25,
                    fontFamily: "Quicksand",
                  ),
                )
              ],
            ),
            SizedBox(
              height:30,
            ),
            Center(
              child: ClipOval(
                child: Image.asset(
                  "images/moy.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Swanmoy Nag',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Pacifico',
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'MACHINE LEARNING DEVELOPER',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                //fontFamily: 'SourceSansPro'
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.grey.shade300,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey.shade200,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "swanmoy.evilgenius@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: .25,
                    fontFamily: "Quicksand",
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ClipOval(
                child: Image.asset(
                  "images/mota.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Swarnasekhar Dutta',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Pacifico',
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'FRONTEND DEVELOPER',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                //fontFamily: 'SourceSansPro'
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.grey.shade300,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey.shade200,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "swarnasekhardutta@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: .25,
                    fontFamily: "Quicksand",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
