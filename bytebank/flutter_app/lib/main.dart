import 'package:flutter/material.dart';

void main() => runApp(
      ByteBank(),
    );

class ByteBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controllerCampoConta = TextEditingController();
  final TextEditingController _controllerCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bytebank'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controllerCampoConta,
                style: TextStyle(
                  fontSize: 24.0
                ),
                decoration: InputDecoration(
                  hintText: '0000',
                  labelText: 'Conta'
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controllerCampoValor,
                style: TextStyle(
                  fontSize: 24.0
                ),
                decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  hintText: 'Valor',
                  labelText: '0.00'
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            RaisedButton(
              onPressed: () {
                final int conta = int.tryParse(_controllerCampoConta.text);
                final double valor = double.tryParse(_controllerCampoValor.text);
                if(conta != null && valor != null){
                  final transferenciaCriada = Transferencia(conta,valor);
                  debugPrint('$transferenciaCriada');
                }
              },
              child: Text('Confirmar'),
            )
          ],
        ));
  }
}

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
    return Scaffold(
      body: Column(children: <Widget>[
//        ItemTransferencia(Transferencia(200.0, 312)),
//        ItemTransferencia(Transferencia(3000, 123)),
//        ItemTransferencia(Transferencia(10, 8499)),
      ]),
    );
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
      subtitle: Text(_transferencia.conta.toString()),
    ));
  }
}

class Transferencia {
  final double valor;
  final int conta;

  Transferencia(this.conta, this.valor );

  @override
  String toString() {
    return 'Transferencia: valor: ${this.valor} conta: ${this.conta}';
  }
}
