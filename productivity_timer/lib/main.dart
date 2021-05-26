import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'widgets.dart';
import 'timer.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// Scoped Model See
    return ScopedModel(
      //Time Model See
        model: TimerModel(),
        child: MaterialApp(
          title: 'Productivity Timer',
          //explain
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: MyHomePage(title: 'Productivity Timer'),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final double smallButtonSize = 180.0;
    final double largeButtonSize = 180.0;
    return ScopedModel(
      model: TimerModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Productivity Timer'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                //Three Types of Alignments
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  //BUTTONS
                  ScopedModelDescendant<TimerModel>(
                      builder: (context, _, model) => TomatoButton(
                          Colors.red, "Work", model.startPomodoro, size / 3.2)),
                  ScopedModelDescendant<TimerModel>(
                      builder: (context, _, model) => TomatoButton(
                          Color(0xff8BC34A),
                          'Short Break',
                          model.startShort,
                          size / 3.2)),
                  ScopedModelDescendant<TimerModel>(
                      builder: (context, _, model) => TomatoButton(
                          Color(0xff689F38),
                          'Long Break',
                          model.startLong,
                          size / 3.2)),
                ],
              ),

              //Expanded Used See
              Expanded(
                  child: ScopedModelDescendant<TimerModel>(
                builder: (context, _, model) => CircularPercentIndicator(
                  radius: 180.0,
                  lineWidth: 10.0,
                  percent: model.radius,
                  center: Text(model.time,
                      style: Theme.of(context).textTheme.display1),
                  progressColor: Colors.green,
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ScopedModelDescendant<TimerModel>(
                      builder: (context, _, model) => TomatoButton(
                          Colors.red, "Stop", model.stopTimer, size / 2.1)),
                  ScopedModelDescendant<TimerModel>(
                      builder: (context, _, model) => TomatoButton(
                          Color(0xff689F38),
                          "Restart",
                          model.restart,
                          size / 2.1)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
