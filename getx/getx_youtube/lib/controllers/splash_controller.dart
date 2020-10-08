import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_youtube/pages/home_page.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();

    Future.delayed(Duration(seconds: 2), () {
      //Get.to(HomePage(), transition: Transition.cupertino);
      Get.off(HomePage(), transition: Transition.cupertino);
    });
  }
}
