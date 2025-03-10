import 'package:apptest_food/constants/image_constant.dart';
import 'package:apptest_food/data/models/category_model.dart';
import 'package:apptest_food/data/models/meals_model.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/page/home/home_controller.dart';
import 'package:apptest_food/page/splash/splash_page.dart';
import 'package:apptest_food/routes/app_pages.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class ListCategoryWidget extends GetView<HomeController> {
  const ListCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16.w),
            height: 30.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.category.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      controller.onTapCategory.value =
                          controller.category[index].strCategory;
                      controller.getMealCategory();
                    },
                    child: Obx(
                      () => Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 12.w),
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.4),
                            color: controller.onTapCategory.value ==
                                    controller.category[index].strCategory
                                ? Style.primary600
                                : Style.white,
                            borderRadius: BorderRadius.circular(8.sp)),
                        child: Text(
                          controller.category[index].strCategory,
                          style: Style().interCaptionRegular.copyWith(
                                color: controller.onTapCategory.value ==
                                        controller.category[index].strCategory
                                    ? Style.white
                                    : Style.black,
                              ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 16.h,
          ),
          SizedBox(
            height: 213.h,
            child: Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.mealsCategory.length,
                  itemBuilder: (BuildContext ontext, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 12),
                      child: GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.mealDetail, arguments: {
                              "id": controller.mealsCategory[index].idMeal
                            });
                          },
                          child: _buildItemCategory(
                              controller.mealsCategory[index])),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemCategory(MealsModel category) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            SizedBox(
              height: 50.w,
            ),
            Container(
              width: 150.w,
              height: 155.h,
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                  color: Style.primaryColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(12.sp)),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.w,
                  ),
                  Text(
                    category.strCategory,
                    style: Style()
                        .interBodyEmphasized
                        .copyWith(color: Style.primary900),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 6.w,
                  ),
                  Text(
                    "Tạo bởi",
                    style: Style().interCaptionRegular,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 4.w,
                  ),
                  Text(
                    "Trần Đình Trọng",
                    style: Style().interCaptionRegular,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "15 Mins",
                        style: Style().smallerTextRegular,
                      ),
                      Image.asset(
                        ImageConstant.icNote,
                        width: 16.w,
                        height: 16.h,
                        color: Style.primary900,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              category.strMealThumb,
              width: 80.w,
              height: 80.w,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
