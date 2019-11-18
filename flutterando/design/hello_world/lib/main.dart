import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(80),
        width: 300,
        height: 300, 
        color: Colors.blueGrey,
        child: Text('Texto daor adisohd aodsidhsaiha adsodhas adhsoiha', textAlign: TextAlign.justify, style: TextStyle(color: Colors.cyan, fontSize: 18.0, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
