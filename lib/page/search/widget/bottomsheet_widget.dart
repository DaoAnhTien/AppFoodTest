import 'package:apptest_food/page/search/search_controller.dart';
import 'package:apptest_food/widget/button_with_icon.dart';
import 'package:apptest_food/widget/dialog/dialog_util.dart';
import 'package:flutter/material.dart';
import 'package:apptest_food/constants/image_constant.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BuildBottomshet extends GetView<SearchMealController> {
  const BuildBottomshet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height - 60,
      padding: EdgeInsets.only(
        bottom: 16.w,
        right: 16.w,
        left: 16.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.sp),
          topRight: Radius.circular(40.sp),
        ),
        color: Style.white,
      ),
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.w,
            ),
            Center(
              child: Container(
                width: 80.w,
                height: 5.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.w),
                    color: const Color(0xffD9D9D9)),
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(Icons.clear)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lọc',
                  style: Style().bodyEmphasized.copyWith(fontSize: 22.sp),
                ),
                GestureDetector(
                  onTap: () {
                    controller.area.value = "";
                    controller.categoryst.value = "";
                    controller.ingredientst.value = "";
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 14.h,
                      horizontal: 24.w,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.sp),
                        color: Style.primaryColor.withOpacity(0.15)),
                    child: Text(
                      "Đặt lại",
                      style: Style().bodyEmphasized.copyWith(
                          fontWeight: FontWeight.w400, color: Style.primary600),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.w,
            ),
            Divider(),
            SizedBox(
              height: 24.w,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          ImageConstant.quickreply,
                          width: 24.w,
                          height: 24.w,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          'Danh Mục',
                          style:
                              Style().bodyEmphasized.copyWith(fontSize: 17.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    Wrap(
                      runSpacing: 9.w,
                      spacing: 9.w,
                      children: List.generate(
                        controller.category.length,
                        (index) => GestureDetector(
                          onTap: () {
                            controller.area.value = "";
                            controller.categoryst.value =
                                controller.category[index].strCategory;
                            controller.ingredientst.value = "";
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 6.h),
                            width: (Get.width - 59.w) / 4,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 0.4),
                                color: controller.categoryst.value ==
                                        controller.category[index].strCategory
                                    ? Style.primary600
                                    : Style.white,
                                borderRadius: BorderRadius.circular(8.sp)),
                            child: Text(
                              controller.category[index].strCategory,
                              style: Style().interCaptionRegular.copyWith(
                                    color: controller.categoryst.value ==
                                            controller
                                                .category[index].strCategory
                                        ? Style.white
                                        : Style.black,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          ImageConstant.quickreply,
                          width: 24.w,
                          height: 24.w,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          'Nguyên liệu',
                          style:
                              Style().bodyEmphasized.copyWith(fontSize: 17.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    Wrap(
                      runSpacing: 9.w,
                      spacing: 9.w,
                      children: List.generate(
                        controller.ingredient.length,
                        (index) => GestureDetector(
                          onTap: () {
                            controller.area.value = "";
                            controller.categoryst.value = "";
                            controller.ingredientst.value =
                                controller.ingredient[index];
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 6.h),
                            width: (Get.width - 50.w) / 3,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 0.4),
                                color: controller.ingredientst.value ==
                                        controller.ingredient[index]
                                    ? Style.primary600
                                    : Style.white,
                                borderRadius: BorderRadius.circular(8.sp)),
                            child: Text(
                              controller.ingredient[index].toString(),
                              style: Style().interCaptionRegular.copyWith(
                                    color: controller.ingredientst.value ==
                                            controller.ingredient[index]
                                        ? Style.white
                                        : Style.black,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          ImageConstant.quickreply,
                          width: 24.w,
                          height: 24.w,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          'Khu Vực',
                          style:
                              Style().bodyEmphasized.copyWith(fontSize: 17.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    Wrap(
                      runSpacing: 9.w,
                      spacing: 9.w,
                      children: List.generate(
                        controller.areas.length,
                        (index) => GestureDetector(
                          onTap: () {
                            controller.area.value = controller.areas[index];
                            controller.categoryst.value = "";
                            controller.ingredientst.value = "";
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 6.h),
                            width: (Get.width - 59.w) / 4,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 0.4),
                                color: controller.area.value ==
                                        controller.areas[index]
                                    ? Style.primary600
                                    : Style.white,
                                borderRadius: BorderRadius.circular(8.sp)),
                            child: Text(
                              controller.areas[index].toString(),
                              style: Style().interCaptionRegular.copyWith(
                                    color: controller.area.value ==
                                            controller.areas[index]
                                        ? Style.white
                                        : Style.black,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    Divider(),
                    SizedBox(
                      height: 12.w,
                    ),
                  ],
                ),
              ),
            ),
            RadiusButton(
              onTap: () {
                if (controller.area.value != "" ||
                    controller.categoryst.value != "" ||
                    controller.ingredientst.value != "") {
                  controller.filter();
                  Get..back();
                } else {
                  DialogUtil.showErrorMessage("Lựa chọn mục filter");
                }
              },
              isFullWidth: true,
              maxWidth: Get.width,
              text: "Xác Nhận".tr,
              textColor: Colors.white,
              fontSize: 16.w,
              innerPadding: EdgeInsets.symmetric(vertical: 18.w),
              fontFamily: Style.fontBold,
            ),
          ],
        ),
      ),
    );
  }
}
