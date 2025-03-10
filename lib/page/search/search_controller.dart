import 'package:apptest_food/constants/utils/error_util.dart';
import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/data/models/category_model.dart';
import 'package:apptest_food/data/models/meals_model.dart';
import 'package:apptest_food/page/home/home_controller.dart';
import 'package:apptest_food/widget/dialog/dialog_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:apptest_food/constants/enum_file.dart';
import 'package:apptest_food/constants/image_constant.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class SearchMealController extends GetxController {
  final ApiClient client;
  SearchMealController({required this.client});
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocus = FocusNode();

  final chooseeCategory = [].obs;
  // final meals = <CategoryModel>[].obs;
  final areas = [].obs;
  final category = <CategoryModel>[].obs;
  final meal = <MealsModel>[].obs;
  final ingredient = [].obs;

  final area = "".obs;
  final categoryst = "".obs;
  final ingredientst = "".obs;
  @override
  void onInit() async {
    super.onInit();
    getCategory();
    getArea();
    getIngredient();
    getByName("");
  }

  getCategory() async {
    // loading.value = true;
    await client.getCategory().then((response) async {
      if (response.data != null) {
        category.assignAll((response.data['meals'] as List)
            .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
            .toList());
        category.value = category.take(12).toList();
      } else {
        DialogUtil.showErrorMessage(response.data['error']['msg']);
      }
      // loading.value = false;
    }).catchError((error, trace) {
      // loading.value = false;
      ErrorUtil.catchError(error, trace);
    });
  }

  getArea() async {
    // loading.value = true;
    await client.getArea().then((response) async {
      if (response.data != null) {
        areas.value = (response.data['meals'] as List)
            .map((e) => e['strArea'] as String)
            .toList();

        areas.value = areas.take(12).toList();

        print("areas.length;${areas.length}");
      } else {
        DialogUtil.showErrorMessage(response.data['error']['msg']);
      }
      // loading.value = false;
    }).catchError((error, trace) {
      // loading.value = false;
      ErrorUtil.catchError(error, trace);
    });
  }

  getIngredient() async {
    // loading.value = true;
    await client.getIngredient().then((response) async {
      if (response.data != null) {
        ingredient.value = (response.data['meals'] as List)
            .map((e) => e['strIngredient'] as String)
            .toList();
        ingredient.value = ingredient.take(12).toList();
      } else {
        DialogUtil.showErrorMessage(response.data['error']['msg']);
      }
      // loading.value = false;
    }).catchError((error, trace) {
      // loading.value = false;
      ErrorUtil.catchError(error, trace);
    });
  }

  getByName(String name) async {
    EasyLoading.show(status: "loading".tr);
    await client.getByName(name).then((response) async {
      if (response.data != null) {
        meal.assignAll((response.data['meals'] as List)
            .map((e) => MealsModel.fromJson(e as Map<String, dynamic>))
            .toList());
        EasyLoading.dismiss();
      } else {
        DialogUtil.showErrorMessage("Không tìm thấy món ăn");
        EasyLoading.dismiss();
      }
    }).catchError((error, trace) {
      DialogUtil.showErrorMessage("Không tìm thấy món ăn");
      EasyLoading.dismiss();
    });
  }

  filter() async {
    EasyLoading.show(status: "loading".tr);
    await client
        .filter(
            area: area.value,
            category: categoryst.value,
            ingredient: ingredientst.value)
        .then((response) async {
      if (response.data != null) {
        meal.assignAll((response.data['meals'] as List)
            .map((e) => MealsModel.fromJson(e as Map<String, dynamic>))
            .toList());
        EasyLoading.dismiss();
      } else {
        DialogUtil.showErrorMessage("Không tìm thấy món ăn");
        EasyLoading.dismiss();
      }
    }).catchError((error, trace) {
      DialogUtil.showErrorMessage("Không tìm thấy món ăn");
      EasyLoading.dismiss();
    });
  }
}
