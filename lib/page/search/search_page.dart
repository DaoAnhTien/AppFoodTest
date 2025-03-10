import 'package:apptest_food/constants/image_constant.dart';
import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/page/search/search_controller.dart';
import 'package:apptest_food/page/search/widget/bottomsheet_widget.dart';
import 'package:apptest_food/routes/app_pages.dart';
import 'package:apptest_food/widget/_title_default_text_field.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchMealPage extends GetView<SearchMealController> {
  const SearchMealPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SearchMealController(client: ApiClient()));
    return SafeArea(
      child: Scaffold(
          backgroundColor: Style.backgrooundColor,
          resizeToAvoidBottomInset: true,
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TitleDefaultTextField(
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          preIcon: Icon(
                            Icons.search,
                            size: 20.w,
                          ),
                          width: double.infinity,
                          radius: 8.w,
                          controller: controller.searchController,
                          // hintStyle: ,

                          focusNode: controller.searchFocus,
                          textStyle: Style().smallTextRegular,
                          hintText: 'Tìm kiếm sản phẩm',
                          innerPadding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.w),

                          onChanged: (text) {
                            if (controller.searchController.text.isNotEmpty) {
                              controller
                                  .getByName(controller.searchController.text);
                            }
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                            BuildBottomshet(),
                            isScrollControlled:
                                true, // Cho phép điều chỉnh chiều cao của bottom sheet
                            backgroundColor: Colors.transparent,
                          );
                        },
                        child: Image.asset(
                          ImageConstant.icFilter,
                          width: 36.w,
                          height: 36.w,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Expanded(child: _buildListMeal()),
                ],
              ),
            ),
          )),
    );
  }

  Widget _buildListMeal() {
    return Obx(
      () => SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              runSpacing: 16.h,
              spacing: 16.w,
              children: List.generate(
                controller.meal.length,
                (index) => GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.mealDetail,
                        arguments: {"id": controller.meal[index].idMeal});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.sp)),
                    width: (Get.width - 48.w) / 2,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.sp),
                          child: Image.network(
                            controller.meal[index].strMealThumb,
                            height: 148.h,
                            width: (Get.width - 48.w) / 2,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.w, vertical: 6.w),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Text(controller.meal[index].strMeal,
                                      style: Style().bodyEmphasized),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Row(
                                    children: [
                                      Text("By Little Pony",
                                          style: Style()
                                              .footnoteRegular
                                              .copyWith(
                                                  color: Style.neuture400)),
                                      Spacer(),
                                      Image.asset(
                                        ImageConstant.icWatchLater,
                                        width: 16.w,
                                        height: 16.h,
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Text("20",
                                          style: Style()
                                              .footnoteRegular
                                              .copyWith(
                                                  color: Style.neuture400)),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.w,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildListSuggest() {
    return Obx(
      () => ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: controller.meal.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              child: Center(child: Text(controller.meal[index].strMeal)),
            );
          }),
    );
  }
}
