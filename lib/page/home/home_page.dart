import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/page/home/widget/list_category_widget.dart';
import 'package:apptest_food/page/home/widget/list_recent_recipes_widget.dart';
import 'package:apptest_food/page/home/widget/list_recipe_widget.dart';
import 'package:apptest_food/page/home/widget/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:apptest_food/constants/enum_file.dart';
import 'package:apptest_food/constants/image_constant.dart';
import 'package:apptest_food/data/database_local/app_prefs.dart';
// import 'package:apptest_food/data/models/user/user_model.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:flutter/material.dart';
import 'package:apptest_food/page/home/home_controller.dart';
import 'package:apptest_food/page/home/widget/build_filter.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:apptest_food/widget/_title_default_text_field.dart';
import 'package:get/get.dart';
// import 'package:flutter_rating_bar/src/rating_bar.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController(client: ApiClient()));
    return SafeArea(
        child: Obx(
      () => Scaffold(
          backgroundColor: Style.backgrooundColor,
          resizeToAvoidBottomInset: true,
          body:
              controller.isloading.value == false ? _buildBody() : SizedBox()),
    ));
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchWidget(),
        // SizedBox(height: 15.w),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitle("Canadian"),
                SizedBox(
                  height: 16.h,
                ),
                const ListRecipeWidget(),
                SizedBox(
                  height: 16.h,
                ),
                _buildTitle("Danh mục"),
                SizedBox(
                  height: 16.h,
                ),
                ListCategoryWidget(),
                SizedBox(
                  height: 16.h,
                ),
                _buildTitle("Công thức gần đây", all: false),
                SizedBox(
                  height: 16.h,
                ),
                ListRecentRecipeWidget(),
                _buildTitle("Nguyên Liệu", all: false),
                SizedBox(
                  height: 16.h,
                ),
                _buildIngredient()
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildTitle(String title, {bool all = true}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Style()
                .interSubheadlineEmphasized
                .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600),
          ),
          all == true
              ? Text(
                  "Xem tất cả",
                  style: Style().interSubheadlineEmphasized.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: Style.primary600),
                )
              : SizedBox()
        ],
      ),
    );
  }

  Widget _buildIngredient() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Wrap(
          runSpacing: 9.w,
          spacing: 9.w,
          children: List.generate(
            controller.category.length,
            (index) => GestureDetector(
              onTap: () {
                if (controller.chooseeCategory
                    .contains(controller.category[index])) {
                  controller.chooseeCategory.remove(controller.category[index]);
                } else {
                  controller.chooseeCategory.add(controller.category[index]);
                }
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 6.h),
                width: (Get.width - 59.w) / 4,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.4),
                    color: controller.chooseeCategory
                            .contains(controller.category[index])
                        ? Style.primary600
                        : Style.white,
                    borderRadius: BorderRadius.circular(8.sp)),
                child: Text(
                  controller.category[index].strCategory,
                  style: Style().interCaptionRegular.copyWith(
                        color: controller.chooseeCategory
                                .contains(controller.category[index])
                            ? Style.white
                            : Style.black,
                      ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
