import 'package:apptest_food/data/models/meals_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:apptest_food/constants/enum_file.dart';
import 'package:apptest_food/constants/image_constant.dart';
import 'package:apptest_food/data/apiClient/api_client.dart';
import 'package:apptest_food/data/database_local/app_prefs.dart';
// import 'package:apptest_food/data/models/user/user_model.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:flutter/material.dart';
import 'package:apptest_food/page/recipe/recipe_controller.dart';
import 'package:apptest_food/page/profile/profile_controller.dart';
import 'package:apptest_food/page/search/widget/bottomsheet_widget.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:apptest_food/widget/_custom_header.dart';
import 'package:apptest_food/widget/_title_default_text_field.dart';
import 'package:apptest_food/widget/dialog/custom_dialog.dart';
import 'package:get/get.dart';
// import 'package:flutter_rating_bar/src/rating_bar.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController(client: ApiClient()));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Style.backgrooundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Trang cá nhân",
            style:
                Style().interBodyEmphasized.copyWith(color: Style.primary600),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              Text(
                "Danh sách yêu thích",
                style: Style().interBodyEmphasized,
              ),
              SizedBox(
                height: 10.h,
              ),
              _buildBody()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50.sp),
          child: Image.asset(
            ImageConstant.avater,
            width: 80.w,
            height: 80.h,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Đào Anh Tiến",
          style: Style().interBodyEmphasized.copyWith(color: Style.primary600),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "Bài viết",
                  style: Style()
                      .interCaptionRegular
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                Text("100", style: Style().interSubheadlineEmphasized),
              ],
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              width: 1.w,
              height: 33.h,
              color: Colors.black,
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              children: [
                Text(
                  "Người theo dõi",
                  style: Style()
                      .interCaptionRegular
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                Text("100", style: Style().interSubheadlineEmphasized),
              ],
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              width: 1.w,
              height: 33.h,
              color: Colors.black,
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              children: [
                Text(
                  "Theo dõi",
                  style: Style()
                      .interCaptionRegular
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                Text("100", style: Style().interSubheadlineEmphasized),
              ],
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              width: 1.w,
              height: 33.h,
              color: Colors.black,
            ),
          ],
        ),
        SizedBox(
          height: 10.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Style.primary600,
                  borderRadius: BorderRadius.circular(40.sp)),
              padding: EdgeInsets.symmetric(vertical: 4.w, horizontal: 38.w),
              child: Text(
                "Flow",
                style: Style()
                    .interSubheadlineEmphasized
                    .copyWith(color: Style.white),
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Style.primary600.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(40.sp)),
              padding: EdgeInsets.symmetric(vertical: 4.w, horizontal: 38.w),
              child: Text(
                "Message",
                style: Style()
                    .interSubheadlineEmphasized
                    .copyWith(color: Style.primary600),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            4,
            (index) => Container(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      ImageConstant.imageThumbnails,
                      width: 90.w,
                      height: 90.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Befff",
                    style: Style().interSubheadlineEmphasized,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return StreamBuilder<List<MealsModel>>(
      stream: controller.mealsStream,
      builder: (context, snapshot) {
        final meals;
        if (snapshot.data != null) {
          meals = snapshot.data;
          controller.listMealDB.value = snapshot.data!;
        } else {
          meals = controller.listMealDB;
        }
        return (controller.listMealDB.isNotEmpty)
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    Wrap(
                      spacing: 6.w,
                      runSpacing: 16.w,
                      children: List.generate(
                        meals.length,
                        (index) => ClipRRect(
                          borderRadius: BorderRadius.circular(8.sp),
                          child: Image.network(
                            meals[index].strMealThumb,
                            width: (Get.width - 48.w) / 3,
                            height: 116,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                  ],
                ),
              )
            : Container(
                padding: EdgeInsets.all(50.h),
                height: 200,
                child: Center(
                  child: Column(
                    children: [
                      Image.network(
                        "https://cdn-icons-png.flaticon.com/512/5445/5445197.png",
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        "Món ăn yêu thích Trống",
                        style: Style().interBodyRegular,
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
