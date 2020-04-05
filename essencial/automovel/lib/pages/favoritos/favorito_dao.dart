import 'package:carros/pages/favoritos/favorito.dart';
import 'package:carros/utils/sql/base_dao.dart';

class FavoritoDao extends BaseDAO<Favorito> {
  @override
  Favorito fromMap(Map<String, dynamic> map) {
    // TODO: implement fromMap
    return Favorito.fromMap(map);
  }

  @override
  String get tableName => "favorito";
}
