import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

main(List<String> args) {
  BehaviorSubject b = new BehaviorSubject();
  Observable.range(5, 1).listen(print);
}