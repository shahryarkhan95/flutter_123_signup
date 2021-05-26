import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rows and Columns',
      home: Scaffold(
          appBar: AppBar(title: Text('Rows and Colums')),
          backgroundColor: Colors.indigo[100],
          body: Home()),
    );
  }
}

//MEDIA QUERY ???
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
      width: sizeX,
      height: sizeY,
      // child: Column(children: createSqures(5)),
      child: Row(
          // verticalDirection: VerticalDirection.up,
          // textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: createSquares(5)),
    );
  }

  List<Widget> createSquares(int numSquares) {
    int i = 0;
    List colors = [
      Colors.amber,
      Colors.deepPurple,
      Colors.deepOrange,
      Colors.indigo,
      Colors.lightBlue
    ];
    List<Widget> squares = List<Widget>();

    while (i < numSquares) {
      //Expanded fills the space in the available axis
      Expanded square = Expanded(
          //Flex property-divide available space
          flex: i,
          child: Container(
            color: colors[i],
            // width: 60,
            height: 60,
            child: Text(i.toString()),
          ));
      i++;
      squares.add(square);
    }
    return squares;
  }
}
