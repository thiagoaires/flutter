import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Teste",
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(32.0),
            child: Text("OK fera", style: TextStyle(fontSize: 66),),
        ),
      ),
    );
  }
}