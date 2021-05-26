import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trip Cost Calculator',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FuelForm(),
    );
  }
}

class FuelForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FuelFormState();

// UnderScore Above specifies that that the class in Private (Naming Convention)
}

class _FuelFormState extends State<FuelForm> {
  final _currencies = ['Dollars', 'Euro', 'Pounds'];
  String _currency = 'Dollars';
  TextEditingController distanceController = TextEditingController();
  TextEditingController avgController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Trip Cost Calculator"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            TextFormField(
              
            ),
            TextField(
              controller: distanceController,
              decoration: InputDecoration(
                labelText: 'Distance per Unit',
                labelStyle: textStyle,
                hintText: "e.g 17",
                hintStyle: textStyle,
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              keyboardType: TextInputType.number,
              onChanged: (String string) {
                setState(() {
                  name = string;
                });
              },
            ),
            TextField(
              controller: avgController,
              decoration: InputDecoration(
                labelText: 'Distance',
                hintText: "e.g 124",
                labelStyle: textStyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              keyboardType: TextInputType.number,
              // onChanged: (String string) {
              //   setState(() {
              //     name = string;
              //   });
              // },
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(
                labelText: 'Price',
                hintText: "e.g 1.65",
                labelStyle: textStyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              keyboardType: TextInputType.number,
              // onChanged: (String string) {
              //   setState(() {
              //     name = string;
              //   });
              // },
            ),
            DropdownButton<String>(
              items: _currencies.map((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              value: _currency,
              onChanged: (String value) {
                _onDropdownChanged(value);
              },
            ),
            //Depricated to material button
            
            RaisedButton(
                color: Theme.of(context).primaryColorDark,
                textColor: Theme.of(context).primaryColorLight,
                onPressed: () {
                  setState(
                    () {
                      result = distanceController.text;
                    },
                  );
                },
                child: Text(
                  'Submit',
                  textScaleFactor: 1.5,
                )),
            Text(result),
          ],
        ),
      ),
    );
  }

  _onDropdownChanged(String value) {
    setState(() {
      this._currency = value;
    });

   
  }
   String _calculate() {
    double _distance = double.parse(distanceController.text);
    double _fuelCost = double.parse(priceController.text);
    double _consumption = double.parse(avgController.text);
  }
}

