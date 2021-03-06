import 'package:get/get.dart';
import 'package:getx_youtube/api/users_api.dart';
import 'package:getx_youtube/models/user_model.dart';
import 'package:getx_youtube/pages/profile_page.dart';

class HomeController extends GetxController {
  int _counter = 0;
  List<UserModel> _users = [];

  int get counter => _counter;

  List<UserModel> get users => _users;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("init ok");
  }

  @override
  void onReady() {
    // TODO: implement onReady

    print('onReady');
    this.loadUsers();
  }

  Future<void> loadUsers() async {
    final List<UserModel> data = await UsersApi.instance.getUsers(1);
    this._users = data;
    print(data.length);
    update(['users']);
  }

  showUserProfile({UserModel user}) {
    Get.to(
      ProfilePage(),
      arguments: user,
    );
  }
}
