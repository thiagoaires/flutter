import 'package:mobx/mobx.dart';
import 'package:mobxbasico/models/client_base.dart';

part 'controller_state.g.dart';

class ControllerState = _ControllerState with _$ControllerState;

abstract class _ControllerState with Store {
  var client = ClientBase();

  String validaNome() {
    if (client.nome == null || client.nome.isEmpty) {
      return "Campo invalido";
    }
    if (client.nome.length < 3) {
      return "digite mais de 3 caracteres";
    }

    return null;
  }

  String validaEmail() {
    if (client.email == null || client.email.isEmpty) {
      return "Campo invalido";
    }
    if (!client.email.contains("@")) {
      return "Email invalido";
    }

    return null;
  }

  @computed
  bool get isValid {
    return validaEmail() == null && validaNome() == null;
  }

  dispose() {}
}
