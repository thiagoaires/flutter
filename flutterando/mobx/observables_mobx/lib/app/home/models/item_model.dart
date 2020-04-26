import 'package:mobx/mobx.dart';

part 'item_model.g.dart';

class ItemModel = _ItemModel with _$ItemModel;

abstract class _ItemModel with Store {
  _ItemModel({this.title, this.check = false});

  @observable
  String title;

  @observable
  bool check;

  @action
  setTitle(value) => title = value;

  @action
  setCheck(bool value) => check = value;
}
