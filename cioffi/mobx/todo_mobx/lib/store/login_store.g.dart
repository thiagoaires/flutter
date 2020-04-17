// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  Computed<bool> _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid))
          .value;
  Computed<bool> _$isPasswordValidComputed;

  @override
  bool get isPasswordValid => (_$isPasswordValidComputed ??=
          Computed<bool>(() => super.isPasswordValid))
      .value;
  Computed<Function> _$loginPressedComputed;

  @override
  Function get loginPressed =>
      (_$loginPressedComputed ??= Computed<Function>(() => super.loginPressed))
          .value;

  final _$emailAtom = Atom(name: '_LoginStore.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_LoginStore.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$isVisibleAtom = Atom(name: '_LoginStore.isVisible');

  @override
  bool get isVisible {
    _$isVisibleAtom.context.enforceReadPolicy(_$isVisibleAtom);
    _$isVisibleAtom.reportObserved();
    return super.isVisible;
  }

  @override
  set isVisible(bool value) {
    _$isVisibleAtom.context.conditionallyRunInAction(() {
      super.isVisible = value;
      _$isVisibleAtom.reportChanged();
    }, _$isVisibleAtom, name: '${_$isVisibleAtom.name}_set');
  }

  final _$isLoadingAtom = Atom(name: '_LoginStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$loggedInAtom = Atom(name: '_LoginStore.loggedIn');

  @override
  bool get loggedIn {
    _$loggedInAtom.context.enforceReadPolicy(_$loggedInAtom);
    _$loggedInAtom.reportObserved();
    return super.loggedIn;
  }

  @override
  set loggedIn(bool value) {
    _$loggedInAtom.context.conditionallyRunInAction(() {
      super.loggedIn = value;
      _$loggedInAtom.reportChanged();
    }, _$loggedInAtom, name: '${_$loggedInAtom.name}_set');
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_LoginStoreActionController = ActionController(name: '_LoginStore');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_LoginStoreActionController.startAction();
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginStoreActionController.startAction();
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void handleVisibility() {
    final _$actionInfo = _$_LoginStoreActionController.startAction();
    try {
      return super.handleVisibility();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logout() {
    final _$actionInfo = _$_LoginStoreActionController.startAction();
    try {
      return super.logout();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'email: ${email.toString()},password: ${password.toString()},isVisible: ${isVisible.toString()},isLoading: ${isLoading.toString()},loggedIn: ${loggedIn.toString()},isEmailValid: ${isEmailValid.toString()},isPasswordValid: ${isPasswordValid.toString()},loginPressed: ${loginPressed.toString()}';
    return '{$string}';
  }
}
