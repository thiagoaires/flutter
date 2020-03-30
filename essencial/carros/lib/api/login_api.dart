import 'dart:convert';

import 'package:carros/api/response_api.dart';
import 'package:carros/model/user.dart';
import 'package:http/http.dart' as http;

class LoginAPI {
  static Future<ApiResponse<User>> login(String login, String senha) async {
    try {
      final urlLogin = "http://carros-springboot.herokuapp.com/api/v2/login";

      Map params = {
        "username": login,
        "password": senha,
      };

      String jsonParams = json.encode(params);
      Map<String, String> headers = {
        "Content-Type": "application/json",
      };

      var response =
          await http.post(urlLogin, body: jsonParams, headers: headers);
      Map mapResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        final userLogged = User.fromJson(mapResponse);
        userLogged.save();

        return ApiResponse.ok(userLogged);
      } else {
        return ApiResponse.error(mapResponse["error"]);
      }
    } catch (error, exception) {
      return ApiResponse.error("nao foi possivel efetuar o login");
    }
  }
}
