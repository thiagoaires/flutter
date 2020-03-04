import 'dart:async';

import 'package:rxdart/subjects.dart';

main(List<String> args) {
  BehaviorSubject<String> b = new BehaviorSubject<String>();
  BehaviorSubject<String> c = new BehaviorSubject<String>();
  // b.stream.pipe(c);
  // b.stream.listen((data) => print("B $data"));
  b.stream.listen(c.sink.add);
  b.stream.listen(print);
  c.stream.listen(print);
  b.sink.add("12");
}