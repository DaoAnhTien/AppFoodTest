// import 'package:apptest_food/page/login/login.dart';
import 'package:apptest_food/page/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
