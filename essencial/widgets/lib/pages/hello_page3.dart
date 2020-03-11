import 'package:flutter/material.dart';
import 'package:widgets/utils/nav.dart';

class HelloPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello page 3"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () => _onClickVoltar(context),
            child: Text("Voltar"),
          ),
        ),
      ),
    );
  }

  _onClickVoltar(BuildContext context) => pop(context, "Tela 3");
}
