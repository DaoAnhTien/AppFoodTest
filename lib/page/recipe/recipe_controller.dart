import 'package:apptest_food/constants/utils/error_util.dart';
import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/data/models/meals_model.dart';
import 'package:apptest_food/widget/dialog/dialog_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:apptest_food/constants/enum_file.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class RecipeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final ApiClient client;

  RecipeController({required this.client});
  final indexTab = 0.obs;

  final mealsArea = <MealsModel>[].obs;
  @override
  void onInit() async {
    super.onInit();
    getmeals();
  }

  Future<void> getmeals() async {
    await client.getmeals().then((response) async {
      if (response.data != null) {
        mealsArea.assignAll((response.data['meals'] as List)
            .map((e) => MealsModel.fromJson(e as Map<String, dynamic>))
            .toList());
      } else {
        DialogUtil.showErrorMessage(response.data['error']['msg']);
      }
    }).catchError((error, trace) {
      ErrorUtil.catchError(error, trace);
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
