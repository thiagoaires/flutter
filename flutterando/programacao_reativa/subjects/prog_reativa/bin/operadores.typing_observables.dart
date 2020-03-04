import 'package:rxdart/rxdart.dart';
import 'dart:async';

main(List<String> args) {
  BehaviorSubject<int> b = BehaviorSubject();
  b.stream.listen(print);

  b.sink.add(21);

  Observable<bool> o = Observable<bool>.just(true);
  o.listen(print);
}