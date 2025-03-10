import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:apptest_food/widget/button_with_icon.dart';
import 'package:get/get.dart';

class DialogTwoButton extends StatelessWidget {
  final String title;
  final String titleButtonConfirm;
  final Function()? onTap;
  const DialogTwoButton({
    super.key,
    required this.title,
    required this.titleButtonConfirm,
    this.onTap,
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
                  title,
                  style: Style().smallTextBold.copyWith(
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
                        text: titleButtonConfirm,
                        // outsidePadding: EdgeInsets.symmetric(horizontal: 16.w),
                        textColor: Style.white,
                        onTap: onTap ??
                            () {
                              Get.back();
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
