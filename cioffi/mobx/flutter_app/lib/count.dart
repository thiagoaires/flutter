import 'package:mobx/mobx.dart';

part 'count.g.dart';

class Count = _Count with _$Count;

abstract class _Count with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }
}
