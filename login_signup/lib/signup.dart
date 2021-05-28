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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                    child: Text('SIGN UP HERE',
                        style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold)),
                  ),
                 
                 ]
               
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


              //GET NUMBER FROM USER HERE

                       Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: number,
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: 'Enter Your Number Here'),
                )
              ),


              //ENTER SIGNUP PASSWORD
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

                      obscureText: false,
                    ),

                  SizedBox(height: 20.0),

                  //TEXT FIELD (NICK NAME)
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'NICKNAME',
                      labelStyle: TextStyle(
                      
                        fontFamily: 'Montserrat',
                        fontWeight:FontWeight.bold,
                        color: Colors.grey,
                         ),
                         
                         focusedBorder: UnderlineInputBorder(
                      borderSide:BorderSide(color:Colors.green),
                         ),
                      ),

                      //FOCUSED BORDER
                      // focusedBorder: UnderlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.green,
                      //     ),
                      //     ),
                    

                    //SIGN UP BUTTON
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},   //WHY ON TAP NOT DEFINED?
                        child: Center(
                          child: Text('LOGIN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  
                                  fontFamily: 'Montserrat'
                                  ),
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        );
  }
}
