import 'package:dio/dio.dart';
import 'package:getx_youtube/models/user_model.dart';

class UsersApi {
  UsersApi._internal();
  static UsersApi _instance = UsersApi._internal();
  static UsersApi get instance => _instance;

  final _dio = Dio();

  Future<List<UserModel>> getUsers(int page) async {
    try {
      final Response response =
          await this._dio.get("https://reqres.in/api/users", queryParameters: {
        "page": page,
      });
      return (response.data['data'] as List)
          .map((e) => UserModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
      return null;
    }
  }
}
