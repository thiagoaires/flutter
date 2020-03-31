import 'dart:async';

import 'package:carros/api/carros_api.dart';
import 'package:carros/model/car.dart';

class CarBloc {
  final _streamController = StreamController<List<Car>>();

  Stream<List<Car>> get streamController => _streamController.stream;

  void loadCarros(String tipo) async {
    try {
      List<Car> carros = await CarrosApi.getCarros(tipo);
      _streamController.add(carros);
    } catch (e) {
      _streamController.addError(e);
    }
  }

  void dispose() {
    _streamController.close();
  }
}
