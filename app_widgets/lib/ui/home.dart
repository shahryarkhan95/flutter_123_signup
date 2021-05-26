import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 30.0, left: 10.0),
      color: Colors.deepOrangeAccent,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Margherita',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 80.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.normal,
                ),
              ),
              Expanded(
                  child: Text(
                "Tomato,Mozzarella,Basil",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.bold,
                ),
              ))
            ],
          ),
          PizzaImageWidget(),
          OrderButton(),
        ],
      ),
    ));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza1.png');
    Image image = Image(
      image: pizzaAsset,
      width: 400.0,
    );
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order your Pizza!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
