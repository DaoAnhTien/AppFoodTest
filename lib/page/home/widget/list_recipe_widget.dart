import 'package:apptest_food/constants/image_constant.dart';
import 'package:apptest_food/data/models/category_model.dart';
import 'package:apptest_food/data/models/meals_model.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/page/home/home_controller.dart';
import 'package:apptest_food/routes/app_pages.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class ListRecipeWidget extends GetView<HomeController> {
  const ListRecipeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 252,
        child: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: ListView.builder(
              // padding: EdgeInsets.only(left: 16.w),
              scrollDirection: Axis.horizontal,
              itemCount: controller.mealsArea.length,
              itemBuilder: (BuildContext ontext, int index) {
                return Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: GestureDetector(
                      onTap: () {
                        Get.toNamed(arguments: {
                          "id": controller.mealsCategory[index].idMeal
                        }, AppRoutes.mealDetail)
                            ?.then(
                          (value) {
                            print(value);
                            controller.mealsArea[index].fav.value = value;
                          },
                        );
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
      width: 206.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8.sp)),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.sp),
            child: Image.network(
              meal.strMealThumb,
              height: 140.h,
              width: 206.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1 tiếng 20 phút",
                        style: Style()
                            .interCaptionRegular
                            .copyWith(color: Style.secondary900),
                      ),
                      meal.fav.value == false
                          ? Icon(
                              Icons.favorite_border_rounded,
                              size: 18.sp,
                            )
                          : Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 18.sp,
                            )
                    ],
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(meal.strMeal,
                    style: Style().interCaptionRegular,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
                SizedBox(
                  height: 7.h,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.sp),
                      child: Image.asset(
                        ImageConstant.logoSplash,
                        height: 40.h,
                        width: 40.w,
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
                          .copyWith(color: Style.primaryColor),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
