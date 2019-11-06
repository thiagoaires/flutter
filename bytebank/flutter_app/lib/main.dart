import 'package:flutter/material.dart';

void main() => runApp(
      CurrentApp(),
    );

class CurrentApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: ListaTransferencias(),
      appBar: AppBar(
        title: Text("Transferencias"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarm),
      ),
    ));
  }
}

class ListaTransferencias extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ItemTransferencia(Transferencia(200.0, 312)),
      ItemTransferencia(Transferencia(3000, 123)),
      ItemTransferencia(Transferencia(10, 8499)),
    ]);
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  const ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(_transferencia.valor.toString()),
      subtitle: Text(_transferencia.agencia.toString()),
    ));
  }
}

class Transferencia{
   final double valor;
   final int agencia;

   Transferencia(this.valor, this.agencia);
}
