import 'package:apptest_food/constants/config_constant.dart';
import 'package:apptest_food/data/database_local/meals_db.dart';
import 'package:apptest_food/data/models/meals_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:apptest_food/constants/enum_file.dart';
import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/data/database_local/app_prefs.dart';
import 'package:apptest_food/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class ProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final ApiClient client;

  ProfileController({required this.client});
  late Stream<List<MealsModel>> mealsStream;
  final listMealDB = <MealsModel>[].obs;
  @override
  void onInit() {
    super.onInit();
    listMealDB.value = MealsDB().getMeals();
    mealsStream = MealsDB().watchMeals().handleError((error) {
      print('Error in meals stream: $error');
    });
  }

  void loadMeals() {}
}
