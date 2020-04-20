import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobxbasico/store/controller_state.dart';
import 'package:provider/provider.dart';

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ControllerState>(context);
    return Observer(
      builder: (_) {
        return Text(controller.isValid ? "Form VALIDADO" : "ERRRO");
      },
    );
  }
}
