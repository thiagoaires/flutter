import 'package:get/state_manager.dart';
import 'package:getx_youtube/api/users_api.dart';
import 'package:getx_youtube/models/user_model.dart';

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

  void increment() {
    _counter++;
    update();
  }
}
