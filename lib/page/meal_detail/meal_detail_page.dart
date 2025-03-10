import 'package:apptest_food/constants/image_constant.dart';
import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/data/database_local/meals_db.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/widget/_cached_image.dart';
import 'package:flutter/material.dart';
import 'package:apptest_food/page/meal_detail/meal_detail_controller.dart';
import 'package:apptest_food/routes/app_pages.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:apptest_food/widget/_custom_header.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

class MealDetailPage extends GetView<MealDetailController> {
  const MealDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MealDetailController(client: ApiClient()));
    return Obx(
      () => SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: Scaffold(
              backgroundColor: Style.backgrooundColor,
              resizeToAvoidBottomInset: true,
              body: controller.meal.value.idMeal.isNotEmpty
                  ? Stack(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              _buildHeader(),
                              SizedBox(
                                height: 24.h,
                              ),
                              _buildBody(),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              padding: EdgeInsets.only(left: 16.w),
                              width: Get.width,
                              height: 45.h,
                              color: Colors.grey.withOpacity(0.3),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.back(
                                          result: controller.checkFavo.value);
                                    },
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Chi tiết",
                                    style: Style()
                                        .interBodyEmphasized
                                        .copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                            ))
                      ],
                    )
                  : SizedBox()),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.sp),
                bottomRight: Radius.circular(8.w))),
        child: Column(
          children: [
            Image.network(
              controller.meal.value.strMealThumb,
              height: 393.h,
              width: Get.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.w).copyWith(right: 0),
              child: SizedBox(
                height: 70,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 16.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            ImageConstant.imageThumbnails,
                            width: 70.w,
                            height: 70.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Obx(
      () => Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.sp),
                topRight: Radius.circular(8.w))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    controller.meal.value.strMeal,
                    style: Style().interHeadlineRegular,
                  ),
                ),
                GestureDetector(
                    onTap: () async {
                      if (controller.checkFavo.value == false) {
                        await MealsDB().save(controller.meal.value);
                        controller.checkFavo.value = true;
                      } else {
                        await MealsDB()
                            .deleteMeal(controller.meal.value.idMeal);
                        controller.checkFavo.value = false;
                      }
                    },
                    child: controller.checkFavo.value == true
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border_outlined,
                          ))
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              controller.meal.value.strMeal,
              style: Style()
                  .interBodyRegular
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  "4.2",
                  style: Style()
                      .interHeadlineRegular
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Container(
                  width: 1,
                  height: 25,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  "20 Đánh giá",
                  style: Style()
                      .interHeadlineRegular
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 16.w,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    ImageConstant.imageThumbnails,
                    fit: BoxFit.cover,
                    width: 42.w,
                    height: 42.h,
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  "Đinh Trọng Phúc",
                  style: Style()
                      .interHeadlineRegular
                      .copyWith(color: Style.primary600),
                ),
              ],
            ),
            SizedBox(
              height: 16.w,
            ),
            const Divider(
              color: Style.primary600,
              height: 1.5,
            ),
            SizedBox(
              height: 24.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: List.generate(
                  2,
                  (index) => GestureDetector(
                    onTap: () {
                      controller.tabIndex.value = index;
                    },
                    child: Container(
                      width: (Get.width - 64.w) / 2,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      decoration: BoxDecoration(
                          color: controller.tabIndex.value == index
                              ? Style.primary600
                              : Colors.white,
                          borderRadius: BorderRadius.circular(8.sp)),
                      child: Text(
                        index == 0 ? "Nguyên Liệu" : "Chế biến",
                        style: Style().interSubheadlineEmphasized.copyWith(
                              color: controller.tabIndex.value == index
                                  ? Style.white
                                  : Style.primary600,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.w,
            ),
            controller.tabIndex.value == 0
                ? _buildTabIngredient()
                : _buildTabInstructions(),
            SizedBox(
              height: 24.w,
            ),
            GestureDetector(
              onTap: () {
                controller
                    .launchURL("https://www.youtube.com/watch?v=4aZr5hZXP_s");
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 12.h),
                width: Get.width,
                decoration: BoxDecoration(
                    color: Style.primary600.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8.sp)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageConstant.liveTv,
                      width: 20.w,
                      height: 20.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Xem video",
                      style: Style().interBodyEmphasized.copyWith(
                          color: Style.primary600, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTabIngredient() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nguyên liệu",
            style: Style().interHeadlineRegular,
          ),
          SizedBox(
            height: 12.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              controller.meal.value.ingredients.length,
              (index) => Text(
                controller.meal.value.ingredients[index],
                style: Style()
                    .interSubheadlineEmphasized
                    .copyWith(fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: 24.w,
          ),
          Text(
            "Liều lượng",
            style: Style().interHeadlineRegular,
          ),
          SizedBox(
            height: 12.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              controller.meal.value.measures.length,
              (index) => Text(
                controller.meal.value.measures[index],
                style: Style()
                    .interSubheadlineEmphasized
                    .copyWith(fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTabInstructions() {
    return Container(
      child: Text(
        controller.meal.value.strInstructions,
        style: Style()
            .interSubheadlineEmphasized
            .copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }
}
