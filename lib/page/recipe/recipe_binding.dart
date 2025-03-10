import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/page/home/home_controller.dart';
import 'package:apptest_food/page/recipe/recipe_controller.dart';
import 'package:get/get.dart';

class RecipeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecipeController(client: ApiClient()));
  }
}
