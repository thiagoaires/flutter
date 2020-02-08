import 'package:flutter/material.dart';
import 'package:form_flutter/model/produto.model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _qtdeController = TextEditingController();
  final TextEditingController _valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Nome"
              ),
              controller: _nomeController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Quantidade"
              ),
              controller: _qtdeController,
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Valor"
              ),
              controller: _valorController,
              keyboardType: TextInputType.numberWithOptions(),
            ),
            RaisedButton(
              child: Text("Cadastrar"),
              onPressed: () {
                final nome = _nomeController.text;
                final qtde = int.tryParse(_qtdeController.text);
                final valor = double.tryParse(_valorController.text);

                final Produto produto = Produto(nome, qtde, valor);
                print(produto.toString());
              },)
          ],
        ),
      ),
    );
  }
}

