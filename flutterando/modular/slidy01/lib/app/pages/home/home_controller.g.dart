// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$textoHomeAtom = Atom(name: '_HomeControllerBase.textoHome');

  @override
  String get textoHome {
    _$textoHomeAtom.reportRead();
    return super.textoHome;
  }

  @override
  set textoHome(String value) {
    _$textoHomeAtom.reportWrite(value, super.textoHome, () {
      super.textoHome = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic setTextoHome(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setTextoHome');
    try {
      return super.setTextoHome(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
textoHome: ${textoHome}
    ''';
  }
}
