import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData (
        brightness: Brightness.dark,
        primaryColor: Color(0xff009688),
        accentColor: Color(0xff7C4DFF),
        textTheme: TextTheme(
          body1: TextStyle(
            fontSize: 24,
            fontStyle: FontStyle.italic,
          ),
 
         )
      ),

     


      home: Scaffold(
        appBar: AppBar(
          title: Text('Building Layout with Flutter'),
        ),
        body: Center(
            child: Text(
          'Hello Flutter Layouts',
          style: TextStyle(fontSize: 24),
        )),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.lightbulb_outline),
            onPressed: () {
              print('You Rang?');
            }),
            persistentFooterButtons: <Widget>[
              IconButton(
                icon: Icon(Icons.add_comment),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.add_alarm),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.add_location),
                onPressed: (){},
              ),

            ],
           
            
      ),
    );
  }
}
