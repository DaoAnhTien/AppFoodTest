import 'package:apptest_food/constants/utils/error_util.dart';
import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/data/models/category_model.dart';
import 'package:apptest_food/data/models/meals_model.dart';
import 'package:apptest_food/widget/dialog/dialog_util.dart';
import 'package:flutter/material.dart';
import 'package:apptest_food/constants/enum_file.dart';
import 'package:apptest_food/constants/image_constant.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final ApiClient client;
  HomeController({required this.client});
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocus = FocusNode();
  final chooseeCategory = [].obs;
  final onTapCategory = "".obs;
  final isloading = false.obs;
  final mealsArea = <MealsModel>[].obs;
  final category = <CategoryModel>[].obs;

  final mealsCategory = <MealsModel>[].obs;
  @override
  void onInit() async {
    super.onInit();
    EasyLoading.show(status: "loading".tr);
    isloading.value = true;
    await getCategory();
    onTapCategory.value = category[0].strCategory;
    await getmealsArea();
    await getMealCategory();

    isloading.value = false;
    EasyLoading.dismiss();
  }

  Future<void> getmealsArea() async {
    // loading.value = true;
    await client.getmealsArea("Canadian").then((response) async {
      if (response.data != null) {
        mealsArea.assignAll((response.data['meals'] as List)
            .map((e) => MealsModel.fromJson(e as Map<String, dynamic>))
            .toList());
        print("123313123${mealsArea.length}");
      } else {
        DialogUtil.showErrorMessage(response.data['error']['msg']);
      }
      // loading.value = false;
    }).catchError((error, trace) {
      // loading.value = false;
      ErrorUtil.catchError(error, trace);
    });
  }

  Future<void> getMealCategory() async {
    EasyLoading.show(status: "loading".tr);
    await client.getMeals(onTapCategory.value).then((response) async {
      if (response.data != null) {
        mealsCategory.assignAll((response.data['meals'] as List)
            .map((e) => MealsModel.fromJson(e as Map<String, dynamic>))
            .toList());
        EasyLoading.dismiss();
      } else {
        DialogUtil.showErrorMessage(response.data['error']['msg']);
        EasyLoading.dismiss();
      }
      // loading.value = false;
    }).catchError((error, trace) {
      // loading.value = false;
      ErrorUtil.catchError(error, trace);
      EasyLoading.dismiss();
    });
  }

  Future<void> getCategory() async {
    // loading.value = true;
    await client.getCategory().then((response) async {
      if (response.data != null) {
        category.assignAll((response.data['meals'] as List)
            .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
            .toList());
      } else {
        DialogUtil.showErrorMessage(response.data['error']['msg']);
      }
      // loading.value = false;
    }).catchError((error, trace) {
      // loading.value = false;
      ErrorUtil.catchError(error, trace);
    });
  }
}
