import 'package:flutter/material.dart';

void main() {
  runApp(
    //UI in Flutter is made through Material APp Widget
    MaterialApp(
      title: "Hello Flutter App",
      //Scaffold Widget Allows Creation Of A AppBar
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title in App Bar"),
        ),
        body: Material(
          color: Colors.deepPurple,
          child: Center(
            child: Text(
              'Hello Flutter',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white, fontSize: 36.0),
            ),
          ),
        ),
      ),
    ),
  );
}
