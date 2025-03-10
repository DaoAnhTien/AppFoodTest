import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/routes/app_pages.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:apptest_food/widget/button_with_icon.dart';
import 'package:get/get.dart';

class DialogLogin extends StatelessWidget {
  const DialogLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Style.white, borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(30.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hãy Đăng nhập tài khoản của bạn để biết thêm thông tin về SYMCAR",
                  style: Style().smallTextBold.copyWith(
                        height: 1.5,
                        color: Style.black,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: RadiusButton(
                        backgroundColor: Style.white,
                        isFullWidth: true,
                        text: 'Hủy',
                        border: Border.all(color: Style.gray1.withOpacity(0.7)),
                        // outsidePadding: EdgeInsets.symmetric(horizontal: 16.w),
                        textColor: Style.primary100,
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: RadiusButton(
                        isFullWidth: true,
                        text: "Đăng Nhập",
                        // outsidePadding: EdgeInsets.symmetric(horizontal: 16.w),
                        textColor: Style.white,
                        onTap: () {
                          Get.offAllNamed(AppRoutes.login);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
