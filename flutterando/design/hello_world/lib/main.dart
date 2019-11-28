import 'package:flutter/material.dart';
import 'components/button-row-icon.dart';

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
                  
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              ButtonRowIcon(color: Colors.yellow, text: "Botao", icon: Icons.add_alarm),
              ButtonRowIcon(color: Colors.red, text: "top", icon: Icons.accessibility),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(color: Colors.black45, width: 40, height: 40,),
                  Container(color: Colors.black45, width: 40, height: 40,),
                  Container(color: Colors.black45, width: 40, height: 40,),
                   
                ],
              )
            ]
          ), 
        ),
      ),
    );
  }
}