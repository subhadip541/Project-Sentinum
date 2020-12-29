import 'package:flutter/material.dart';
import 'package:sample/Nevigation.dart';

import 'analyzer/Home.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
       // backgroundColor: Colors.grey.shade900,
        drawer: Nevigation(),
        appBar: AppBar(
          title: Text(
            'Sentinum',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              
            ),
          ),
        ),
        body: Home(),
      ),
    ),
  );
}
