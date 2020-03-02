import 'dart:math';

main(List<String> args) {
  var funPar = () => print('numero par');
  var funImpar = () => print('OLOCO, impar');

  executa(par: funPar, impar: funImpar);

}

void executa({Function par, Function impar}){
  var sorteado = Random().nextInt(10);
  print(sorteado);

  sorteado % 2 == 0 ? par() : impar();

}

// main(List<String> args) {
//     executar(() => funcaoPar(), () => funcaoImpar());
// }

// void executar(Function funPar, Function funImpar){
//   Random().nextInt(10) % 2 == 0 ? funPar() : funImpar();
// }

// funcaoPar(){
//   print('par');
// }
// funcaoImpar(){
//   print('impar');
// }