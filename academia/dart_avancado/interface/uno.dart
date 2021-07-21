import 'carro.dart';

class Uno implements Carro {
  @override
  String motor = "1.0";

  @override
  int portas = 2;

  @override
  int rodas = 5;

  @override
  int calculaVelocidadeMaxima() {
    // TODO: implement calculaVelocidadeMaxima
    return 160;
  }
}
