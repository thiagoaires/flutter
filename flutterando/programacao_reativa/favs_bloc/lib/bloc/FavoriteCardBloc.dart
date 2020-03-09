import 'package:favs_bloc/model/Post.dart';
import 'package:rxdart/rxdart.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class FavoriteCardBloc extends BlocBase{

  final _favoriteListController = BehaviorSubject<List<Post>>();
  Stream<List<Post>> get _favoriteListFlux => _favoriteListController.stream;
  Sink<List<Post>> get favoriteListEvent => _favoriteListController.sink;

  final _favoriteListAddController = BehaviorSubject<Post>();
  Stream<Post> get _favoriteAddItemFlux => _favoriteListAddController.stream;
  Sink<Post> get _favoriteAddItemEvent => _favoriteListAddController.sink;

  final _favoriteListDeleteController = BehaviorSubject<Post>();
  Stream<Post> get _favoriteDeleteItemFlux => _favoriteListAddController.stream;
  Sink<Post> get _favoriteDeleteItemEvent => _favoriteListAddController.sink;

  @override
  void dispose(){
    _favoriteListController.close();
    _favoriteListAddController.close();
    _favoriteListDeleteController.close();
  }
}