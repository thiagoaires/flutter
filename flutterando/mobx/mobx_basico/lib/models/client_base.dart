import 'package:mobx/mobx.dart';

part 'client_base.g.dart';

class ClientBase = _ClientBase with _$ClientBase;

abstract class _ClientBase with Store {
  @observable
  String nome;

  @action
  void setNome(valor) => nome = valor;

  @observable
  String email;

  @action
  void setEmail(valor) => email = valor;

  @observable
  String cpf;

  @action
  void setCpf(valor) => cpf = valor;
}
