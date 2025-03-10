import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/page/home/home_controller.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:apptest_food/widget/_title_default_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class SearchWidget extends GetView<HomeController> {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TitleDefaultTextField(
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
      innerPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 19.w),
      outsidePadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      onChanged: (text) {},
    );
  }
}
