import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

main(List<String> args) {
  BehaviorSubject b = new BehaviorSubject();
  Observable.range(1, 4)
    .switchMap((data) => Observable.timer(data, Duration(seconds: 1)))
    .listen(print);
}