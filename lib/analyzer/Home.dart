import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/analyzer/Twitter.dart';

import 'Fb.dart';
import 'Insta.dart';

class Home extends StatelessWidget {
  @override
  Future navigateToTwitter(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Twitter()));
  }
  Future navigateToInsta(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Insta()));
  }
  Future navigateToFb(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Fb()));
  }
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              child: Container(
                  height: 240.0,
                  width: 480,
                  //color: const Color(0xffDC1C17),
                  //color: const Color(0xffFFAB91),
                  decoration: new BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'images/twitter1.jpg',
                          ),
                          alignment: Alignment.center,
                          fit: BoxFit.fill),
                      color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0),
                        bottomRight: const Radius.circular(20.0),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Pacifico',
                          fontSize: 29,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
              ),
              onPressed: (){
                  navigateToTwitter(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              child: Container(
                  height: 240.0,
                  width: 450,
                  //color: const Color(0xffDC1C17),
                  //color: const Color(0xffFFAB91),
                  decoration: new BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'images/instagram2.png',
                          ),
                          alignment: Alignment.center,
                          fit: BoxFit.fitHeight),
                      color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0),
                        bottomRight: const Radius.circular(20.0),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                          fontSize: 29,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )),
              onPressed: (){
                navigateToInsta(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              child: Container(
                  height: 240.0,
                  width: 450,
                  //color: const Color(0xffDC1C17),
                  //color: const Color(0xffFFAB91),
                  decoration: new BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'images/Facebook2.jpg',
                          ),
                          alignment: Alignment.center,
                          fit: BoxFit.fill),
                      color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0),
                        bottomRight: const Radius.circular(20.0),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                          fontSize: 29,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )),
              onPressed: (){
                navigateToFb(context);
              },
            ),
          ),

        ],
      ),
    );
  }
}
