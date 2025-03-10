import 'package:apptest_food/constants/app_constant.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/page/dashboard/dashboard_controller.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:apptest_food/utils/screen_util.dart';
import 'package:apptest_food/widget/animatedBottomNavigationBar/animated_bottom_navigation_bar.dart';
import 'package:apptest_food/widget/indexed_transition_switcher.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: BASE_WIDTH, allowFontScaling: true)
      ..init(context);
    return Material(
      child: WillPopScope(
          onWillPop: () async {
            return true;
          },
          child: Obx(
            () => Scaffold(
              body: IndexedTransitionSwitcher(
                transitionBuilder: (
                  Widget child,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                ) {
                  return FadeThroughTransition(
                    fillColor: Colors.transparent,
                    animation: animation,
                    secondaryAnimation: secondaryAnimation,
                    child: child,
                  );
                },
                index: controller.currentTab.value,
                children: controller.children,
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Style.primaryColor,
                onPressed: () {},
                child: Icon(Icons.add),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: AnimatedBottomNavigationBar(
                activeIndex: controller.currentTab.value,
                backgroundColor: Colors.white,
                activeColor: Style.primaryColor,
                inactiveColor: Colors.grey,
                splashColor: Style.primaryColor,
                splashSpeedInMilliseconds: 300,
                gapLocation: GapLocation.center,
                onTap: controller.switchTab,
                icons: controller.iconList,
              ),
            ),
          )),
    );
  }
}
