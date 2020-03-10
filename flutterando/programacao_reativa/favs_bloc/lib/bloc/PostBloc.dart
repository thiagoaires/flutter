import 'package:favs_bloc/model/Post.dart';
import 'package:favs_bloc/services/PostService.dart';
import 'package:rxdart/rxdart.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class PostBloc extends BlocBase {
  final _postListController = BehaviorSubject<List<Post>>();

  final postApi = PostService();

  Stream<List<Post>> get postListFlux => _postListController.stream;
  Sink<List<Post>> get postListEvent => _postListController.sink;

  PostBloc(){
    postApi.getPosts().then(postListEvent.add);
  }

  @override
  void dispose() {
    _postListController.close();
  }
}
