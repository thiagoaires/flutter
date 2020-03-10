import 'package:favs_bloc/model/Favorites.dart';
import 'package:rxdart/rxdart.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:favs_bloc/model/Post.dart';

class FavoriteBloc extends BlocBase{


  final _favorites = Favorites();

  final _favoriteListController = BehaviorSubject<List<Post>>();
  Stream<List<Post>> get favoriteListFlux => _favoriteListController.stream;
  Sink<List<Post>> get favoriteListEvent => _favoriteListController.sink;

  final _favoriteListAddController = BehaviorSubject<Post>();
  Stream<Post> get _favoriteAddItemFlux => _favoriteListAddController.stream;
  Sink<Post> get _favoriteAddItemEvent => _favoriteListAddController.sink;

  final _favoriteListDeleteController = BehaviorSubject<Post>();
  Stream<Post> get _favoriteDeleteItemFlux => _favoriteListAddController.stream;
  Sink<Post> get _favoriteDeleteItemEvent => _favoriteListAddController.sink;

  FavoriteBloc(){
    _favoriteAddItemFlux.listen(_handleAdd);
    _favoriteDeleteItemFlux.listen(_handleDelete);
  }

  void updateList(){
    favoriteListEvent.add(_favorites.posts.toList());
  }

  _handleAdd(Post post){
    _favorites.posts.add(post);
  }

  _handleDelete(Post post){
    _favorites.posts.remove(post);
  }

  @override
  void dispose(){
    _favoriteListController.close();
    _favoriteListAddController.close();
    _favoriteListDeleteController.close();
  }

}