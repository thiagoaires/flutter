
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:favs_bloc/model/Post.dart';
import 'package:rxdart/rxdart.dart';

class FavoriteCardBloc extends BlocBase{



  final _FavoriteListController = BehaviorSubject<List<Post>>();
  Stream<List<Post>> get favoriteListFlux => _FavoriteListController.stream;
  Sink<List<Post>> get favoriteListEvent => _FavoriteListController.sink;

  final _isFavoriteController = BehaviorSubject<bool>();
  Stream<bool> get isFavoriteFlux => _isFavoriteController.stream;
  Sink<bool> get isFavoriteEvent => _isFavoriteController.sink;

  FavoriteCardBloc(Post post){
    favoriteListFlux.map((data) => data.contains(post)).listen(_isFavoriteController.add);
  }

  @override
  void dispose(){
    _FavoriteListController.close();
    _isFavoriteController.close();
  }
}