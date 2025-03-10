import 'package:apptest_food/data/database_local/app_prefs.dart';
import 'package:apptest_food/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final token = ''.obs;
  @override
  void onInit() {
    onToHome();
    super.onInit();
  }

  void onToHome() async {
    Get.offNamed(AppRoutes.dashboard);
  }
}
