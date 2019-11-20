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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              color: Colors.yellow,
              height: 39,
            ),
            Container(
              color: Colors.red,
              width: double.maxFinite,
              height: 60,),
            ButtonCard(),
            TextButton()  
          ]
        ),
      ),
    );
  }
}

class ButtonCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 111,
      color: Colors.blue,
      child: Icon(Icons.add, color: Colors.white,),

    );
  }
}


class TextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      alignment: Alignment.center,
      color: Colors.greenAccent,
      child: Text('Parmera sem mundial', style: TextStyle(color: Colors.lightGreen),)
    );
  }
}