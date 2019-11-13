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
            Editor(
                controlador: _controllerCampoConta,
                rotulo: 'Numero da Conta',
                dica: '0000',
                icone: null),
            Editor(
                controlador: _controllerCampoValor,
                rotulo: 'Valor',
                dica: '0,00',
                icone: Icons.monetization_on),
            RaisedButton(
              child: Text('Confirmar'),
              onPressed: () => _criaTransferencia(),
            ),
          ],
        ));
  }

  void _criaTransferencia() {
    final int conta = int.tryParse(_controllerCampoConta.text);
    final double valor = double.tryParse(_controllerCampoValor.text);
    if (conta != null && valor != null) {
      final transferenciaCriada = Transferencia(conta, valor);
      debugPrint('$transferenciaCriada');
    }
  }
}

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String dica;
  final String rotulo;
  final IconData icone;

  Editor({this.controlador, this.dica, this.rotulo, this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
            icon: this.icone != null ? Icon(Icons.monetization_on) : null,
            hintText: dica,
            labelText: rotulo),
        keyboardType: TextInputType.number,
      ),
    );
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

  Transferencia(this.conta, this.valor);

  @override
  String toString() {
    return 'Transferencia: valor: ${this.valor} conta: ${this.conta}';
  }
}
