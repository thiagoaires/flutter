import 'package:mobx/mobx.dart';
import 'package:slidy02/app/modules/home/models/poke_model.dart';
import 'package:slidy02/app/modules/home/repository/poke_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokeRepository repository;

  @observable
  ObservableFuture<List<PokeModel>> pokemons;

  _HomeControllerBase(this.repository) {
    fetchPokemons();
  }

  @action
  fetchPokemons() => pokemons = repository.getAllPoke().asObservable();
}
