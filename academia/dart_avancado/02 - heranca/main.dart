import 'cachorro.dart';

main(List<String> args) {
  Cachorro c = Cachorro();

  c.nome = 'baconzito';
  c.tamanho = 'grande';
  c.idade = 8;

  print(c.calcularIdadeHumana());
}
