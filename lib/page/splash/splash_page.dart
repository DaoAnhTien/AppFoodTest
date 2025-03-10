import 'package:flutter/material.dart';
import 'package:apptest_food/constants/image_constant.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/page/splash/splash_controller.dart';
import 'package:apptest_food/routes/app_pages.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:apptest_food/utils/screen_util.dart';
import 'package:apptest_food/widget/button_with_icon.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 430, allowFontScaling: true)
      ..init(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            ImageConstant.logoSplash,
            fit: BoxFit.cover,
            width: Get.width,
            height: Get.height,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 265.h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color.fromRGBO(0, 0, 0, 0.001),
                      Color.fromRGBO(0, 0, 0, 0.3),
                      Color.fromRGBO(0, 0, 0, 0.7),
                      Colors.black
                    ]),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Bắt đầu với những món ăn",
                      textAlign: TextAlign.center,
                      style:
                          Style().interLargeTitle.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offNamed(AppRoutes.dashboard);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 16.w),
                        decoration: BoxDecoration(
                            color: Style.primaryColor,
                            borderRadius: BorderRadius.circular(8.sp)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Bắt đầu",
                              style: Style()
                                  .interBodyRegular
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
