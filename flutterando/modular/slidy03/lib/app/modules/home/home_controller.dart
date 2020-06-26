import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:slidy03/app/shared/repository/localstorage/local_storage_hive.dart';
import 'package:slidy03/app/shared/repository/localstorage/local_storage_interface.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final ILocalStorage _storage = Modular.get();

  @observable
  String text = '';

  @action
  setText(String value) => text = value;

  ObservableList<String> list = <String>[].asObservable();

  _HomeControllerBase() {
    init();
  }
  @action
  init() async {
    List<String> listLocal = await _storage.get('list');
    if (listLocal == null) {
      list = <String>[].asObservable();
    } else {
      list = listLocal.asObservable();
    }
  }

  @action
  void save() {
    list.add(text);
    _storage.put('list', list);
    //list.add(text);
  }

  @action
  void delete(int index) {
    list.removeAt(index);
    _storage.put('list', list);
  }
}
