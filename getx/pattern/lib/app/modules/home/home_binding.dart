import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pattern/app/data/provider/api.dart';
import 'package:pattern/app/data/repository/posts_repository.dart';
import 'package:pattern/app/modules/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        repository: PostsRepository(
          apiClient: MyApiClient(
            httpClient: http.Client(),
          ),
        ),
      ),
    );
  }
}
