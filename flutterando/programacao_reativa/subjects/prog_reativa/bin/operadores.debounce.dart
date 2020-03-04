import 'dart:async';

import 'package:rxdart/subjects.dart';

main(List<String> args) {
  BehaviorSubject<String> b = new BehaviorSubject<String>();
  b.stream.debounceTime(Duration(seconds: 1)).listen(print);
  b.sink.add("21");
  b.sink.add("213");
  b.sink.add("2122");
}