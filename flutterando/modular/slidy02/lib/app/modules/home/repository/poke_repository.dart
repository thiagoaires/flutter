import 'package:dio/dio.dart';
import 'package:slidy02/app/modules/home/models/poke_model.dart';

class PokeRepository {
  final Dio dio;

  PokeRepository(this.dio);

  Future<List<PokeModel>> getAllPoke() async {
    var response = await dio.get('/pokemon');
    List<PokeModel> list = List();

    for (var json in (response.data['results'] as List)) {
      PokeModel model = PokeModel(name: json['name']);
      list.add(model);
    }
    return list;
  }
}
