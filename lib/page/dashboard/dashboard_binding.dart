import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/page/dashboard/dashboard_controller.dart';
import 'package:apptest_food/page/home/home_controller.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => HomeController(client: ApiClient()));
  }
}
