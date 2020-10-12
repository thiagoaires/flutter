import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pattern/app/data/provider/api.dart';
import 'package:pattern/app/data/repository/posts_repository.dart';
import 'package:pattern/controller/details/detais_controller.dart';

class DetailsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(
      () => DetailsController(
        repository: PostsRepository(
          apiClient: MyApiClient(
            httpClient: http.Client(),
          ),
        ),
      ),
    );
  }
}
