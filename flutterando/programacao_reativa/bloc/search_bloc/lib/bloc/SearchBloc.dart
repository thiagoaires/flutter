import 'package:github_search/models/SearchResult.dart';
import 'package:github_search/services/data/GithubService.dart';
import 'package:rxdart/rxdart.dart';

class SearchBloc{

  GithubService _service = new GithubService();

  final _searchController = new BehaviorSubject<String>();
  Stream<String> get searchFlux => _searchController.stream;
  Sink<String> get searchEvent => _searchController.sink;
  

  Stream<SearchResult> apiResultFlux;

  void dispose(){
    _searchController.close();
  }

  SearchBloc(){
    apiResultFlux = searchFlux
    .distinct()
    .where((valor) => valor.length > 2)
    .asyncMap(_service.search)
    .switchMap((valor) => Stream.value(valor));
  }
}