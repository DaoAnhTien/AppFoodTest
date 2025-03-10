import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/page/meal_detail/meal_detail_controller.dart';
import 'package:get/get.dart';

class MealDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MealDetailController(client: ApiClient()));
  }
}
