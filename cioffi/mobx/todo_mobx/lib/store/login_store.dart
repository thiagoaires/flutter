import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  _LoginStore();

  @observable
  String email = "";

  @observable
  String password = "";

  @observable
  bool isVisible = false;

  @observable
  bool isLoading = false;

  @observable
  bool loggedIn = false;

  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;

  @action
  void handleVisibility() => isVisible = !isVisible;

  @action
  Future<void> login() async {
    isLoading = true;
    await Future.delayed(Duration(seconds: 2));
    isLoading = false;
    loggedIn = true;
    email = "";
    password = "";
  }

  @action
  void logout() {
    loggedIn = false;
  }

  @computed
  bool get isEmailValid => email.length > 6;

  @computed
  bool get isPasswordValid => password.length > 3;

  @computed
  Function get loginPressed => (isEmailValid && isPasswordValid) ? login : null;
}
