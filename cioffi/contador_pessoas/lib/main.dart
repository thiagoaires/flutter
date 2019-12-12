import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Home();
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _numberPeople = 0;

  void changeNumber(value) {
    setState(() {
      _numberPeople += value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: <Widget>[
          Image.asset(
            "images/restaurant.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Pessoas: $_numberPeople",
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Text("-1",
                          style: TextStyle(color: Colors.red, fontSize: 40.0)),
                      onPressed: () {
                        changeNumber(-1);
                      },
                    ),
                    FlatButton(
                      child: Text("+1",
                          style:
                              TextStyle(color: Colors.green, fontSize: 40.0)),
                      onPressed: () => changeNumber(1),
                    )
                  ],
                ),
              ),
              Text(
                _numberPeople < 0 ? "mundo invertido" : "pode entrar",
                style: TextStyle(
                    color: Colors.yellow, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );;
  }
}