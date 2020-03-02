main(List<String> args) {
  saudarPessoa(nome: "thiago", idade: 23);
  saudarPessoa(idade: 40, nome: "Henrique");
  saudarPessoa(idade: 30);
}

void saudarPessoa({String nome = "Ze ninguem", int idade}){
  print("Bom dia $nome, voce tem $idade, nem parece");
}