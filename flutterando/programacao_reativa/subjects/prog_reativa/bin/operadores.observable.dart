import 'dart:async';

import 'package:rxdart/rxdart.dart';

main(List<String> args) {
  Observable observavel = Observable.just("a");
  observavel.listen(print);

  BehaviorSubject b = new BehaviorSubject();

  b.sink.add(213);
  StreamSubscription subscription = b.stream.listen(print);
  b.sink.add(213);
  subscription.pause();
  b.sink.add(312312);
  subscription.resume();
  subscription.onData((data) => print("vai brasil $data"));

}