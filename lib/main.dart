import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BMI Calculator',
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0D22),
          scaffoldBackgroundColor: Color(0xFF0A0D22),
          // textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white), )
        ),
        home: InputPage(),
        );
  }
}

class InputPage extends StatefulWid get {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Center(child: Text("Content goes here")),
        floatingActionButton: Container(
          child: Theme(data: ThemeData(accentColor: Colors.purple,), 
          child: FloatingActionButton(child: Icon(Icons.add), onPressed: () {},),
        ));
  }
}
