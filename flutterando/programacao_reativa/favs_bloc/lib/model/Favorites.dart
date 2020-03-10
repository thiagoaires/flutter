import 'Post.dart';

class Favorites{
  final Set<Post> postList = <Post>{};

  Set<Post> get posts => postList;

  void addPost(Post post) => postList.add(post);

  void deletePost(Post post) => postList.remove(post);
}