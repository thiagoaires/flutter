import 'package:flutter/material.dart';
import 'package:widgets/utils/nav.dart';
import 'package:widgets/widget/blue_button.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello page"),
      ),
      body: Container(
        child: Center(
          child: BlueButton(
            "Voltar",
            onPressed: () => _onClickVoltar(context),
          ),
        ),
      ),
    );
  }

  _onClickVoltar(BuildContext context) => pop(context, "Tela 2");
}
