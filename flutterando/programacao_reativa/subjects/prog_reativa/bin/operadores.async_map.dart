import 'dart:async';

main(List<String> args) {
  final controller = StreamController.broadcast();

  controller.stream.distinct()
    .asyncMap((e) => atrasado(e))
    .handleError((error) => print(error))
    .listen(print);

  controller.add("12");

  controller.add("o");


}

Future<List<String>> atrasado(String texto) async{
  await Future.delayed(Duration(seconds: 1));
  throw("Erro");
  print(texto);
  return ["1,2,3,4","Jose", "Joao"].where((e) => e.contains(texto)).toList();
}