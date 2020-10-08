import 'package:get/state_manager.dart';

class MyController extends GetxController {
  final RxInt _num = 0.obs;

  int get num => this._num.value;

  set num(value) => this._num.value;

  void increment() => this._num.value++;
  void decrement() => this._num.value--;
}
