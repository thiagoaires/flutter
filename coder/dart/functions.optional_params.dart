import 'dart:math';

main(List<String> args) {
 print(aleatorio(2)); 
 print(aleatorio()); 
}


int aleatorio([int max = 20]){
  return Random().nextInt(max);
}

