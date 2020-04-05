import 'dart:async';

import 'package:carros/pages/carros/carro.dart';
import 'package:carros/pages/carros/carros_api.dart';
import 'package:carros/pages/carros/carro_dao.dart';
import 'package:carros/utils/is_network_on.dart';
import 'package:carros/utils/simple_bloc.dart';
import 'package:connectivity/connectivity.dart';

class CarrosBloc extends SimpleBloc<List<Carro>> {
  Future<List<Carro>> fetch(String tipo) async {
    try {
      bool networkOn = await isNetworkOn();

      if (!networkOn) {
        List<Carro> carros = await CarroDAO().findAllByTipo(tipo);
        add(carros);
        return carros;
      }

      List<Carro> carros = await CarrosApi.getCarros(tipo);

      add(carros);

      return carros;
    } catch (e) {
      addError(e);
    }
  }
}
