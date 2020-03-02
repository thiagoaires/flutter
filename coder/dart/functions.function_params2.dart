main(List<String> args) {
  var imprimidor = (String texto) => print(texto);

  executaQto(3, imprimidor, "vai brazil");
}

void executaQto(int qtde, Function fn, String msg){
  for(var i = 0; i < qtde; i++){
    fn(msg);
  }
}