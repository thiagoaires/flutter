import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobxbasico/store/controller_state.dart';
import 'package:provider/provider.dart';

class BodyWidget extends StatelessWidget {
  _textField({String label, Function onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "$label",
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ControllerState>(context);
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Observer(
            builder: (_) {
              return _textField(
                  label: "Nome",
                  onChanged: controller.client.setNome,
                  errorText: controller.validaNome);
            },
          ),
          Observer(
            builder: (_) {
              return _textField(
                  label: "E-mail",
                  onChanged: controller.client.setEmail,
                  errorText: controller.validaEmail);
            },
          ),
          Observer(
            builder: (_) {
              return RaisedButton(
                onPressed: controller.isValid ? () {} : null,
                child: Text("vai la"),
              );
            },
          ),
        ],
      ),
    );
  }
}
