import 'dart:io';

import 'package:dio/dio.dart';
import 'package:apptest_food/constants/utils/app_util.dart';
import 'package:apptest_food/data/apiClient/base_client.dart';

class ApiClient {
  static const apiHostReal = 'https://www.themealdb.com/api/json/v1/1';
  final client = BaseClient.instance.dio;

  Future<Response> getmeals() async {
    return client.get('$apiHostReal/search.php?f=c');
  }

  Future<Response> getmealsArea(String area) async {
    return client.get('$apiHostReal/filter.php?a=$area');
  }

  Future<Response> getMeals(String name) async {
    return client.get('$apiHostReal/filter.php?c=$name');
  }

  Future<Response> getArea() async {
    return client.get('$apiHostReal/list.php?a=list');
  }

  Future<Response> getCategory() async {
    return client.get('$apiHostReal/list.php?c=list');
  }

  Future<Response> getIngredient() async {
    return client.get('$apiHostReal/list.php?i=list');
  }

  Future<Response> getByName(String name) async {
    return client.get('$apiHostReal/search.php?s=$name');
  }

  Future<Response> getMealDetail(String id) async {
    return client.get('$apiHostReal/lookup.php?i=$id');
  }

  Future<Response> filter({
    String area = "",
    String category = "",
    String ingredient = "",
  }) async {
    if (area != '') {
      return client.get('$apiHostReal/filter.php?a=$area');
    } else if (category != '') {
      return client.get('$apiHostReal/filter.php?c=$category');
    }
    return client.get('$apiHostReal/filter.php?i=$ingredient');
  }
}
