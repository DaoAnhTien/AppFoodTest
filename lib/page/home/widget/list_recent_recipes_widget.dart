import 'package:apptest_food/constants/image_constant.dart';
import 'package:apptest_food/data/models/category_model.dart';
import 'package:apptest_food/data/models/meals_model.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/page/home/home_controller.dart';
import 'package:apptest_food/routes/app_pages.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class ListRecentRecipeWidget extends GetView<HomeController> {
  const ListRecentRecipeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: Obx(
        () => Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.mealsArea.length,
              itemBuilder: (BuildContext ontext, int index) {
                return Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: GestureDetector(
                      onTap: () {
                        Get.toNamed(arguments: {
                          "id": controller.mealsCategory[index].idMeal
                        }, AppRoutes.mealDetail);
                      },
                      child: _buildItemRecipe(controller.mealsArea[index])),
                );
              }),
        ),
      ),
    );
  }

  Widget _buildItemRecipe(MealsModel meal) {
    return Container(
      width: 133.w,
      decoration: BoxDecoration(
          color: Style.backgrooundColor,
          borderRadius: BorderRadius.circular(8.sp)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.sp),
            child: Image.network(
              meal.strMealThumb,
              height: 133.h,
              width: 133.w,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            meal.strMeal,
            style: Style().interSubheadlineEmphasized,
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.sp),
                child: Image.asset(
                  ImageConstant.logoSplash,
                  height: 18.h,
                  width: 18.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 6.h,
              ),
              Text(
                "Đinh Trọng Phúc",
                style: Style()
                    .interCaptionRegular
                    .copyWith(color: Style.secondary900),
              ),
            ],
          )
        ],
      ),
    );
  }
}
