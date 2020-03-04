import 'dart:async';

main(List<String> args) {
  final controller = StreamController.broadcast();
  final list = [1,2,3,5];
  final listaMapeada = list.map((f) => f*3).where((f)=>  f % 2 == 1).skip(1).take(1);

  controller.stream.listen((e) => print("Stream Comum: $e"));
  controller.stream.map((a) => a * 3).where((a) => a % 2 == 1).listen((e) => print("transformada $e"));
  controller.add(212);
  controller.add(231);
  controller.add(312123);
  print(listaMapeada);
}