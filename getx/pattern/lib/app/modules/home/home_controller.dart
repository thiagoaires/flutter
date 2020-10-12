import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:pattern/app/data/model/model.dart';
import 'package:pattern/app/data/repository/posts_repository.dart';

class HomeController extends GetxController {
  final PostsRepository repository;
  HomeController({@required this.repository}) : assert(repository != null);

  final RxList<MyModel> _postsList = List<MyModel>().obs;

  get postList => this._postsList.value;
  set postList(value) => this._postsList.value = value;

  getAll() {
    repository.getAll().then((data) => this.postList = data);
  }
}
