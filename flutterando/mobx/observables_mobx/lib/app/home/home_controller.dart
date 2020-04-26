import 'package:mobx/mobx.dart';
import 'package:observablesmobx/app/home/models/item_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  @observable
  ObservableList<ItemModel> listItems = [
    ItemModel(
      title: "titulo1",
      check: true,
    ),
    ItemModel(
      title: "titulo2",
      check: false,
    ),
    ItemModel(
      title: "titulo3",
      check: true,
    ),
  ].asObservable();

  @action
  addItem(ItemModel value) => listItems.add(value);

  @action
  removeItem(ItemModel value) {
    listItems.removeWhere((item) => item.title == value.title);
  }

  @observable
  String search = '';

  @action
  setSearch(String value) => search = value;

  @computed
  List<ItemModel> get listFilteredItem {
    if (search.length == 0)
      return listItems;
    else
      return listItems
          .where(
              (item) => item.title.toLowerCase().contains(search.toLowerCase()))
          .toList();
  }
}
