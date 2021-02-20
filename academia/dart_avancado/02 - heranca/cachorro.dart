import 'animal.dart';

class Cachorro extends Animal {
  String nome;

  @override
  int calcularIdadeHumana() {
    return this.idade * 7;
  }
}
