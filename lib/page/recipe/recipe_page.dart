import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/data/models/meals_model.dart';
import 'package:apptest_food/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:apptest_food/constants/enum_file.dart';
import 'package:apptest_food/constants/image_constant.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:flutter/material.dart';
import 'package:apptest_food/page/recipe/recipe_controller.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:apptest_food/widget/_custom_header.dart';
import 'package:apptest_food/widget/_title_default_text_field.dart';
import 'package:get/get.dart';
// import 'package:flutter_rating_bar/src/rating_bar.dart';

class RecipePage extends GetView<RecipeController> {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RecipeController(client: ApiClient()));
    return SafeArea(
      child: Obx(
        () => Scaffold(
            backgroundColor: Style.backgrooundColor,
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text(
                "Công thức",
                style: Style()
                    .interBodyEmphasized
                    .copyWith(color: Style.primary600),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w)
                  .copyWith(bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      2,
                      (index) => GestureDetector(
                        onTap: () {
                          controller.indexTab.value = index;
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: (Get.width - 48.w) / 2,
                          padding: EdgeInsets.symmetric(vertical: 6.h),
                          decoration: BoxDecoration(
                              color: controller.indexTab.value == index
                                  ? Style.primary600
                                  : Style.primary600.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(40.sp)),
                          child: Text(index == 0 ? "Video" : "Công thức",
                              style: Style()
                                  .interSubheadlineEmphasized
                                  .copyWith(
                                    color: controller.indexTab.value == index
                                        ? Style.white
                                        : Style.primary600,
                                  )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Expanded(child: _buildListRecipe())
                ],
              ),
            )),
      ),
    );
  }

  Widget _buildListRecipe() {
    return SizedBox(
      height: 218,
      child: ListView.builder(
          itemCount: controller.mealsArea.length,
          itemBuilder: (BuildContext ontext, int index) {
            return Container(
              margin: EdgeInsets.only(bottom: 16.w),
              child: _buildItemRecipe(controller.mealsArea[index]),
            );
          }),
    );
  }

  Widget _buildItemRecipe(MealsModel meal) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.mealDetail, arguments: {"id": meal.idMeal});
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8.sp)),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.sp),
                      topRight: Radius.circular(8.sp)),
                  child: Image.network(
                    meal.strMealThumb,
                    height: 140.h,
                    width: Get.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    child: GestureDetector(
                  onTap: () {
                    controller.launchURL(meal.strYoutube);
                  },
                  child: Image.asset(
                    ImageConstant.playButton,
                    width: 40.w,
                    height: 40.h,
                  ),
                )),
                Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.w, horizontal: 4.w),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(4.sp)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            "5",
                            style: Style()
                                .interCaptionRegular
                                .copyWith(color: Style.white),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 7.w,
                vertical: 12.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1 tiếng 20 phút",
                    style: Style()
                        .interCaptionRegular
                        .copyWith(color: Style.secondary900),
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
                          ImageConstant.avater,
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
      ),
    );
  }
}
