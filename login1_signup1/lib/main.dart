import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      // resizeToAvoidBottomPadding: false,(Not Working after FLutter v1.1.9)
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
        Container(
        child: Stack(
            children: <Widget>[
            Container(
            padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
        child: Text('Hop',
            style: TextStyle(
                fontSize: 80.0, fontWeight: FontWeight.bold)),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
        child: Text('Place',
            style: TextStyle(
                fontSize: 80.0, fontWeight: FontWeight.bold)),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(240.0, 175.0, 0.0, 0.0),
        child: Text('.',
            style: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
                color: Colors.green)),
      ),
      ],
    ),
    ),
    Container(
    padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
    child: Column(
    children: <Widget>[
    //TEXT FIELD 1
    TextField(
    decoration: InputDecoration(
    labelText: 'EMAIL',
    labelStyle: TextStyle(
    //Cannot Add font to Pubspec.yaml file
    fontFamily: 'Montserrat',
    color: Colors.grey,
    ),

    //FOCUSED BORDER
    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.green)),
    ),
    ),

    SizedBox(height: 20.0),

    //TEXT FIELD 2
    TextField(
    decoration: InputDecoration(
    labelText: 'PASSWORD',
    labelStyle: TextStyle(
    //Cannot Add font to Pubspec.yaml file
    fontFamily: 'Montserrat',
    color: Colors.grey,
    ),

    //FOCUSED BORDER
    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.green)),
    ),
    //FOR HIDING PASSWORD USE OBSCURE TEXT

    obscureText: true,
    ),

    SizedBox(height: 5.0),

    //FORGOT PASSWORD
    Container(
    alignment: Alignment(1.0, 0.0),
    padding: EdgeInsets.only(top: 15.0, left: 20.0),
    child: InkWell(
    child: Text(
    'Forgot Password',
    style: TextStyle(
    color: Colors.green,
    fontWeight: FontWeight.bold,

    //Cannot Add font to Pubspec.yaml file?
    fontFamily: 'Montserrat',
    decoration: TextDecoration.underline),
    ),
    ),
    ),

    SizedBox(height: 40.0),
    Container(
    height: 40.0,

    //TO CREATE ROUNDER EDGES ON A RECTANGULAR SHAPE

    //LOGIN BUTTON
    child: Material(
    borderRadius: BorderRadius.circular(20.0),
    shadowColor: Colors.greenAccent,
    color: Colors.green,
    elevation: 7.0,
    child: GestureDetector(
    onTap: () {},
    child: Center(
    child: Text('LOGIN',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    //Cannot Add font to Pubspec.yaml file?
    fontFamily: 'Montserrat')),
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    SizedBox(height: 20.0),
    Container(
    height: 40.0,
    color: Colors.transparent,
    child: Container(
    decoration: BoxDecoration(
    border: Border.all(
    width: 1.0,
    ),
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(20.0)),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Center(
    //FACEBOOK LOGO IMAGE
    child: ImageIcon(AssetImage('assets/facebook.png')),
    ),

    SizedBox(width: 10.0),

    //NOT WORKING PROPERLY

    //BUTTON 2
    Center(
    child: Text(
    'Log in with facebook',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat'),
    ),
    ),
    ],
    ),
    ),
    ),
    SizedBox(height: 15.0),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Text(
    ' New to HopPlace',
    style: TextStyle(fontFamily: 'Montserrat'),
    ),
    SizedBox(width: 5.0),
    InkWell(
    onTap: () {},
    child: Text(
    'Register',
    style: TextStyle(
    color: Colors.green,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    ),
    ),
    ),
    ],
    ),

    SizedBox (height:15.0),

    Container(
    height: 40.0,
    color: Colors.transparent,
    child: Container(
    decoration: BoxDecoration(
    border: Border.all(
    width: 1.0,
    ),
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(20.0)),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Center(
    //FACEBOOK LOGO IMAGE
    child: ImageIcon(AssetImage('assets/apple.png')),
    ),

    ],
    ),
    ));
  }
}
