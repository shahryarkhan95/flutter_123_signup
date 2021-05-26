import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container App',
      home: Scaffold(
        appBar: AppBar(title: Text('Container')),
        body: Container(
          margin: EdgeInsets.all(50.0),
          width: 300.0,
          height: 500.0,
          child: FlutterLogo(),
          decoration: BoxDecoration(
            color: Colors.orange,
            image: DecorationImage(
              image: NetworkImage('http://bit.ly/flutter_tiger'),
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.none,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
