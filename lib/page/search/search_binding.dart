import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/page/home/home_controller.dart';
import 'package:apptest_food/page/search/search_controller.dart';
import 'package:get/get.dart';

class SearchMealBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchMealController(client: ApiClient()));
  }
}
