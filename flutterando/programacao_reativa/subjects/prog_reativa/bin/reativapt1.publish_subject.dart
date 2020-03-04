import 'package:rxdart/rxdart.dart';

main(List<String> args) {
  PublishSubject p = PublishSubject();
  p.stream.listen(print);
  p.sink.add(2);
  p.sink.add("Thiago");
}
