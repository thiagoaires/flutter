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
                  
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://htmlcolorcodes.com/assets/images/html-color-codes-color-tutorials-hero-00e10b1f.jpg"),
              fit: BoxFit.cover
            )
          ),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              Image.asset("assets/logo.png", width: 100,),
              Image.network("https://images-americanas.b2w.io/spacey/2019/08/22/full_desk_festamobilecopiar2.png"),
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