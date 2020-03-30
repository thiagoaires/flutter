import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:carros/model/car.dart';

class TipoCarro {
  static final String classicos = "classicos";
  static final String esportivos = "esportivos";
  static final String luxo = "luxo";
}

class CarrosApi {
  static Future<List<Car>> getCarros(String tipo) async {
    try {
      final urlCarros =
          "http://livrowebservices.com.br/rest/carros/tipo/${tipo}";
      print(tipo);

      var response = await http.get(urlCarros);
      List responseCarros = json.decode(response.body);

      final carros = responseCarros.map((c) => Car.fromJson(c)).toList();
      return carros;
    } catch (e) {
      print(e);
    }
  }
}
