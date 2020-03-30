import 'dart:convert';
import 'package:carros/model/user.dart';
import 'package:http/http.dart' as http;
import 'package:carros/model/car.dart';

class TipoCarro {
  static final String classicos = "classicos";
  static final String esportivos = "esportivos";
  static final String luxo = "luxo";
}

class CarrosApi {
  static Future<List<Car>> getCarros(String tipo) async {
    var urlCarros =
        "http://carros-springboot.herokuapp.com/api/v2/carros/tipo/${tipo}";
    User user = await User.get();
    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${user.token}"
    };

    var response = await http.get(urlCarros, headers: headers);
    try {
      List responseCarros = json.decode(response.body);

      List<Car> carros = responseCarros.map((c) => Car.fromJson(c)).toList();
      return carros;
    } catch (error, exception) {
      print(exception);
      throw error;
    }
  }
}
