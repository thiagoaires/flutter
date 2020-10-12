import 'package:meta/meta.dart';
import 'package:get/state_manager.dart';
import 'package:pattern/app/data/model/model.dart';
import 'package:pattern/app/data/repository/posts_repository.dart';

class DetailsController extends GetxController {
  final PostsRepository repository;

  DetailsController({@required PostsRepository this.repository})
      : assert(repository != null);

  final _post = MyModel().obs;

  get post => this._post.value;
  set post(value) => this._post.value = value;

  editar(post) => repository.edit(post);
  apagar(postId) => repository.delete(postId);
}
