import 'dart:math';

main(List<String> args) {
 print(aleatorio(2)); 
 print(aleatorio()); 
 imprimeData(1, 3);
}


int aleatorio([int max = 20]){
  return Random().nextInt(max);
}

imprimeData([int dia=1, int mes=4, int ano=1979]){
  print("$dia/$mes/$ano");
}

