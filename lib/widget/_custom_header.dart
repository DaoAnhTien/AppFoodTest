import 'package:flutter/material.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/style/app_style.dart';

import 'package:get/get.dart';

class CustomHeaderWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String? title;
  final Color? bgColor;
  final Color? titleColor;
  final bool? isShowBack;
  final List<Widget>? actions;

  final VoidCallback? onBackPress;

  CustomHeaderWidget(
      {this.title,
      this.onBackPress,
      this.bgColor = Colors.transparent,
      this.titleColor,
      this.isShowBack = true,
      this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor,
      elevation: 0.0,
      centerTitle: true,
      actions: actions,
      leading: isShowBack == true
          ? Container(
              margin: EdgeInsets.only(left: 0.w),
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: titleColor ?? Colors.black,
                  ),
                  onPressed: () {
                    if (onBackPress == null) {
                      Get.back();
                    } else {
                      onBackPress!();
                    }
                  }),
            )
          : const SizedBox(),
      title: Text(
        title ?? '',
        style: Style().mediumTextBold.copyWith(color: Colors.black),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
