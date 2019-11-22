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
                  
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              ButtonCard(),
              Container(height: 50,),
              TextButton(),
              ButtonRowIcon(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(color: Colors.black45, width: 90, height: 99,),
                  Container(color: Colors.deepOrangeAccent, width: 40, height: 22,),
                   
                ],
              )
            ]
          ), 
        ),
      ),
    );
  }
}
class ButtonRowIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.red,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                
                child: Icon(Icons.add, color: Colors.white, size: 40,)
              ),
              Expanded(
                flex: 4,
                child: Text('Text', style: TextStyle(color: Colors.white, fontSize: 40, ), textAlign: TextAlign.center,)
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: Container(
        width: double.infinity,
        height: 111,
        color: Colors.blue,
        child: Icon(Icons.add, color: Colors.white,),

      ),
    );
  }
}


class TextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), 
          color: Colors.blueGrey,

        ),
        width: double.maxFinite, 
        height: 100,
        alignment: Alignment.center,
        child: Text('Teste1', style: TextStyle(color: Colors.white, fontSize: 24))
      ),
    );
  }
}