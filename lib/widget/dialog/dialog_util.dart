import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:apptest_food/constants/image_constant.dart';
import 'package:apptest_food/constants/utils/app_export.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:apptest_food/widget/dialog/_icon_toast_widget.dart';
import 'package:lottie/lottie.dart';

class DialogUtil {
  static DialogUtil instance = DialogUtil();

  DialogUtil();

  static showSuccessMessage(String description,
      {VoidCallback? onDismiss, bool isTop = true, int duration = 5}) {
    showToastWidget(
      IconToastWidget.success(msg: description),
      context: Get.overlayContext,
      position: isTop ? StyledToastPosition.top : StyledToastPosition.bottom,
      animation: StyledToastAnimation.slideFromTop,
      reverseAnimation: StyledToastAnimation.slideToTop,
      startOffset: const Offset(0.0, -3.0),
      reverseEndOffset: const Offset(0.0, -3.0),
      duration: Duration(seconds: duration),
      animDuration: const Duration(seconds: 1),
      curve: Curves.elasticOut,
      reverseCurve: Curves.fastOutSlowIn,
      onDismiss: onDismiss,
    );
  }

  static showErrorMessage(String description,
      {VoidCallback? onDismiss, bool isTop = true, int duration = 5}) {
    showToastWidget(
      IconToastWidget.fail(msg: description),
      context: Get.overlayContext,
      position: isTop ? StyledToastPosition.top : StyledToastPosition.bottom,
      animation: StyledToastAnimation.slideFromTop,
      reverseAnimation: StyledToastAnimation.slideToTop,
      startOffset: const Offset(0.0, -3.0),
      reverseEndOffset: const Offset(0.0, -3.0),
      duration: Duration(seconds: duration),
      animDuration: const Duration(seconds: 1),
      curve: Curves.elasticOut,
      reverseCurve: Curves.fastOutSlowIn,
      onDismiss: onDismiss,
    );
  }

  static showUploadingDialog(BuildContext context) {
    Get.generalDialog(
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Center(
              child: Opacity(
                opacity: a1.value,
                child: Material(
                  color: Colors.transparent,
                  child: Center(
                    child: SizedBox(
                      child: Lottie.asset(
                        ImageConstant.loadingAnimation,
                        width: 50.w,
                        height: 50.w,
                        fit: BoxFit.cover,
                        repeat: true,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 200),
        barrierLabel: '',
        barrierDismissible: false,
        pageBuilder: (context, animation1, animation2) => const SizedBox());
  }

  static showConfirmDialog(
    BuildContext context, {
    bool isForeUpdate = false,
    String? title,
    String? description,
    String? image,
    String? button,
    GestureTapCallback? action,
    Function? laterAction,
  }) {
    Get.generalDialog(
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Center(
              child: Container(
                margin: EdgeInsets.all(40.w),
                decoration: BoxDecoration(
                  color: context.theme.cardColor,
                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Opacity(
                  opacity: a1.value,
                  child: Material(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 16.w, bottom: 16.w, left: 16.w, right: 16.w),
                          child: Text(
                            title ?? '',
                            textAlign: TextAlign.left,
                            style: Style().smallTextBold,
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Style.primary100,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(vertical: 12.h),
                                  child: Text(
                                    'Không'.tr,
                                    textAlign: TextAlign.center,
                                    style: Style().smallTextBold,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .pop();
                                },
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 56.h,
                              color: Style.primary100,
                            ),
                            Expanded(
                              child: GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: action,
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 12.h),
                                    child: Text(
                                      'Đồng ý'.tr,
                                      textAlign: TextAlign.center,
                                      style: Style()
                                          .smallTextBold
                                          .copyWith(color: Style.gray1),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 200),
        barrierLabel: '',
        barrierDismissible: false,
        pageBuilder: (context, animation1, animation2) => const SizedBox());
  }
}
