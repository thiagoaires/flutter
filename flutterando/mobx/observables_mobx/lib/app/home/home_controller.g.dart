// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  Computed<List<ItemModel>> _$listFilteredItemComputed;

  @override
  List<ItemModel> get listFilteredItem => (_$listFilteredItemComputed ??=
          Computed<List<ItemModel>>(() => super.listFilteredItem))
      .value;

  final _$listItemsAtom = Atom(name: '_HomeController.listItems');

  @override
  ObservableList<ItemModel> get listItems {
    _$listItemsAtom.context.enforceReadPolicy(_$listItemsAtom);
    _$listItemsAtom.reportObserved();
    return super.listItems;
  }

  @override
  set listItems(ObservableList<ItemModel> value) {
    _$listItemsAtom.context.conditionallyRunInAction(() {
      super.listItems = value;
      _$listItemsAtom.reportChanged();
    }, _$listItemsAtom, name: '${_$listItemsAtom.name}_set');
  }

  final _$searchAtom = Atom(name: '_HomeController.search');

  @override
  String get search {
    _$searchAtom.context.enforceReadPolicy(_$searchAtom);
    _$searchAtom.reportObserved();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.context.conditionallyRunInAction(() {
      super.search = value;
      _$searchAtom.reportChanged();
    }, _$searchAtom, name: '${_$searchAtom.name}_set');
  }

  final _$_HomeControllerActionController =
      ActionController(name: '_HomeController');

  @override
  dynamic addItem(ItemModel value) {
    final _$actionInfo = _$_HomeControllerActionController.startAction();
    try {
      return super.addItem(value);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(ItemModel value) {
    final _$actionInfo = _$_HomeControllerActionController.startAction();
    try {
      return super.removeItem(value);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSearch(String value) {
    final _$actionInfo = _$_HomeControllerActionController.startAction();
    try {
      return super.setSearch(value);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'listItems: ${listItems.toString()},search: ${search.toString()},listFilteredItem: ${listFilteredItem.toString()}';
    return '{$string}';
  }
}
