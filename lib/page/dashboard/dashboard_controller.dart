import 'package:flutter/material.dart';
import 'package:apptest_food/page/home/home_page.dart';
import 'package:apptest_food/page/recipe/recipe_page.dart';
import 'package:apptest_food/page/profile/profile_page.dart';
import 'package:apptest_food/page/search/search_page.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../helpers/admod/AppOpenAdManager.dart';
import '../../helpers/admod/app_lifecycle_reactor.dart';

class DashboardController extends GetxController {
  var currentTab = 0.obs;
  // late AppLifecycleReactor _appLifecycleReactor;
  final iconList = [
    Icons.home_rounded,
    Icons.search,
    Icons.account_balance_wallet_outlined,
    Icons.supervisor_account_sharp,
  ];
  List<Widget> children = [
    const HomePage(),
    const SearchMealPage(),
    const RecipePage(),
    const ProfilePage()
  ];

  void switchTab(index) {
    currentTab.value = index;
  }

  @override
  void onInit() {
    // AppOpenAdManager appOpenAdManager = AppOpenAdManager()..loadAd();
    // _appLifecycleReactor =
    //     AppLifecycleReactor(appOpenAdManager: appOpenAdManager);
    // _appLifecycleReactor.listenToAppStateChanges();
    super.onInit();
  }

  Widget get currentPage => children[currentTab.value];
}
