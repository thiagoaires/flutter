import 'package:rxdart/rxdart.dart';

main(List<String> args) {
  
  ReplaySubject r = ReplaySubject();

  r.stream.listen((data) => print("print do: $data"));
  r.sink.add(132);
  r.sink.add("bolota");

  print("valores ${r.values}");
}