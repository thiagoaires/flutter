import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculo IMC",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  String _textInfo = "Informe seus dados";
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void resetController() {
    weightController.text = "";
    heightController.text = "";
    setState(() {
      _textInfo = "Informe seus dados";
      _formKey = GlobalKey<FormState>();
    });
  }

  void _calculaImc() {
    double peso = double.parse(weightController.text);
    double altura = double.parse(heightController.text) / 100;
    double totalImc = peso / (altura * altura);
    debugPrint(totalImc.toString());
    setState(() {
      _textInfo = "seu imc é de ${totalImc.toStringAsPrecision(3)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () => resetController(),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.person,
                color: Colors.purpleAccent,
                size: 180.0,
              ),
              TextFormField(
                controller: weightController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "insira seu peso";
                  }
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: "Peso (kg)",
                    labelStyle:
                        TextStyle(color: Colors.purpleAccent, fontSize: 25.0),
                    prefixIcon: Icon(Icons.layers)),
              ),
              TextFormField(
                controller: heightController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "insira sua altura";
                  }
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: "Altura (cm)",
                    labelStyle:
                        TextStyle(color: Colors.purpleAccent, fontSize: 25.0),
                    prefixIcon: Icon(Icons.line_weight)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    color: Colors.purple,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _calculaImc();
                      }
                    },
                    child: Text(
                      "Calcular",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    textColor: Colors.white,
                  ),
                ),
              ),
              Text(
                _textInfo,
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
