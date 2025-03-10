import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:apptest_food/widget/button_with_icon.dart';
import 'package:get/get.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.onTap,
    this.title = '',
    this.labelButton = '',
  });
  final String title;
  final String labelButton;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Style.white, borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(30),
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
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: RadiusButton(
                        backgroundColor: Style.white,
                        isFullWidth: true,
                        innerPadding: const EdgeInsets.symmetric(vertical: 10),
                        text: 'Hủy',
                        border: Border.all(
                            color: Style.primary100.withOpacity(0.7)),
                        textColor: Style.primary100,
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: RadiusButton(
                          isFullWidth: true,
                          innerPadding:
                              const EdgeInsets.symmetric(vertical: 10),
                          border: Border.all(
                              color: Style.primary100.withOpacity(0.7)),
                          text: labelButton,
                          textColor: Style.white,
                          onTap: onTap),
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
