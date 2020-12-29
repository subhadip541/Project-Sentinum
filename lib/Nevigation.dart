import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/analyzer/Contact.dart';
import 'package:sample/analyzer/Instruction.dart';
import 'package:sample/analyzer/Privacy.dart';

import 'analyzer/About.dart';

class Nevigation extends StatelessWidget {
  Future navigateToInstruction(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Instruction()));
  }
  Future navigateToContact(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
  }
  Future navigateToAbout(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
  }
  Future navigateToPrivacy(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Privacy()));
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            height: 270,
            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/Sentinum.png',
                  ),
                  // alignment: Alignment.center,
                  fit: BoxFit.fill),
            ),
          ),
          ListTile(
            title: Text('How to use'),
            onTap: () {
              navigateToInstruction(context);
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('About'),
            onTap: () {
              navigateToAbout(context);
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Contact us'),
            onTap: () {
              navigateToContact(context);
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Privacy Policy'),
            onTap: () {
              navigateToPrivacy(context);
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
