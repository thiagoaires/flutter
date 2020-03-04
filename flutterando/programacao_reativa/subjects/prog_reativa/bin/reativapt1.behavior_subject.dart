import 'package:rxdart/rxdart.dart';

main(List<String> args) {
 BehaviorSubject b = BehaviorSubject();

 b.sink.add(21);
 
 b.stream.listen(print);
 b.sink.add("BACON");
 print("last: "+ b.value);
}