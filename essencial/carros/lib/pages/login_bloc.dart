import 'dart:async';

import 'package:carros/api/login_api.dart';
import 'package:carros/api/response_api.dart';
import 'package:carros/model/user.dart';

class LoginBloc {
  final _streamController = StreamController<bool>();

  Stream<bool> get streamController => _streamController.stream;

  Future<ApiResponse<User>> login(String login, String senha) async {
    _streamController.add(true);
    ApiResponse<User> response = await LoginAPI.login(login, senha);
    _streamController.add(false);
    return response;
  }

  void dispose() {
    _streamController.close();
  }
}
