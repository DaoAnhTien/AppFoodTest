import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/data/database_local/meals_db.dart';
import 'package:apptest_food/data/models/meals_model.dart';
import 'package:apptest_food/widget/dialog/dialog_util.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

class MealDetailController extends GetxController {
  final ApiClient client;
  MealDetailController({required this.client});
  // BannerAd? bannerAd;
  List<String> tab = ["Ingrident", "Procedure"];
  final meal = MealsModel().obs;
  final listMealDB = <MealsModel>[].obs;

  final idMeal = "".obs;
  final tabIndex = 0.obs;
  final checkFavo = false.obs;
  @override
  void onInit() async {
    super.onInit();
    listMealDB.value = MealsDB().getMeals()!;
    idMeal.value = Get.arguments['id'] as String;
    getMealDetail(idMeal.value);
    await checkFavorite();
  }

  Future<void> checkFavorite() async {
    for (var i = 0; i < listMealDB.length; i++) {
      if (listMealDB[i].idMeal.contains(idMeal.value)) {
        print("listMealDB[i].idMeal${listMealDB[i].idMeal}${idMeal.value}");
        checkFavo.value = true;
      }
    }
  }

  getMealDetail(String id) async {
    EasyLoading.show(status: "loading".tr);
    await client.getMealDetail(id).then((response) async {
      if (response.data['meals'] != null) {
        print("response.data${response.data}");
        meal.value = MealsModel.fromJson(
            response.data['meals'][0] as Map<String, dynamic>);
        EasyLoading.dismiss();
        // print("object${meal.value}");
      } else {
        // DialogUtil.showErrorMessage("Không tìm thấy món ăn");
        EasyLoading.dismiss();
      }
    }).catchError((error, trace) {
      DialogUtil.showErrorMessage("Lôi");
      EasyLoading.dismiss();
    });
  }

  Future<void> launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
