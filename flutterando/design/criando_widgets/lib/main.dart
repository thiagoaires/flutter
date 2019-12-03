import 'package:criando_widgets/components/custom-circle-avatar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('titulo')),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'J',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomCircleAvatar(textCA: 'T', colorCA: Colors.yellow,),
              RaisedButton(
                onPressed: () => print('object'),
                color: Colors.yellow,
                child: Text(
                  'data',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              RaisedButton.icon(
                onPressed: () => print('texto'),
                color: Colors.red,
                icon: Icon(Icons.android),
                label: Text('data'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
