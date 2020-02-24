import 'dart:math';

void main(){
  calculaRandom();
}

void calculaRandom(){
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print("$n1 e $n2");
  print(n1 + n2);
}