import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance";

void main() async {
  print(await getData());
  runApp(MaterialApp(
    theme: ThemeData(
        brightness: Brightness.dark,
        hintColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightGreenAccent))),
        primaryColor: Colors.white),
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _realController = TextEditingController();
  final _dollarController = TextEditingController();
  final _euroController = TextEditingController();
  final _bitcoinController = TextEditingController();
  
  double dollar;
  double euro;
  double bitcoin;

  void _realChanged(String text){
    double real = double.parse(text);
    _dollarController.text = (real/dollar).toStringAsFixed(2);
    print(text);
  }
  void _dollarChanged(String text){
    double dollar = double.parse(text);
    print(text);
  }
  void _euroChanged(String text){
    double euro = double.parse(text);
    print(text);
  }
  void _bitcoinChanged(String text){
    double bitcoin = double.parse(text);
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        title: Text(
          "Badacoin",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: FutureBuilder<Map>(
        future: getData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                child: Text("Carregando"),
              );
            default:
              if (snapshot.hasError) {
                return Center(
                    child: Text(
                  "ERRO",
                  style: TextStyle(color: Colors.red),
                ));
              }
              dollar = snapshot.data["results"]["currencies"]["USD"]["buy"];
              euro = snapshot.data["results"]["currencies"]["EUR"]["buy"];
              bitcoin = snapshot.data["results"]["currencies"]["BTC"]["buy"];
              return SingleChildScrollView(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Icon(
                      Icons.money_off,
                      size: 140,
                      color: Colors.lightGreen,
                    ),
                    buildTextField("Reais", "R\$", _realController, _realChanged),
                    Divider(),
                    buildTextField("Dollar", "US\$", _dollarController, _dollarChanged),
                    Divider(),
                    buildTextField("Euro", "€", _euroController, _euroChanged),
                    Divider(),
                    buildTextField("Bitcoin", "₿", _bitcoinController, _bitcoinChanged)
                  ],
                ),
              );
          }
        },
      ),
    );
  }
}

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}

Widget buildTextField(String label, String prefix, TextEditingController tec, Function f) {
  return TextField(
    controller: tec,
    onChanged: f,
    textAlign: TextAlign.center,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
        labelText: label,
        hintText: label,
        prefixText: prefix,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreenAccent))),
  );
}
