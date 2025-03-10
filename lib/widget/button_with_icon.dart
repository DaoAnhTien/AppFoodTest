import 'package:apptest_food/constants/app_constant.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:flutter/material.dart';
import '_padding_text.dart';

class RadiusButton extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final String? fontFamily;
  final Color? textColor;
  final Color? backgroundColor;
  final Gradient? backgroundGradient;
  final Widget? preIcon;
  final EdgeInsetsGeometry? preIconPadding;
  final Image? postIcon;
  final EdgeInsetsGeometry? innerPadding;
  final EdgeInsetsGeometry? outsidePadding;
  final String? soundPath;
  final bool? isLocal;
  final GestureTapCallback? onTap;
  final double? radius;
  final String? borderRadiusEdge;
  final bool? isFullWidth;
  final bool? avoidMax;
  final MainAxisAlignment? mainAxisAlignment;
  final List<BoxShadow>? shadow;
  final Border? border;
  final double? maxWidth;
  final bool? isDisable;
  final bool? isLoading;
  final double? indicatorSize;
  final int? maxLines;
  final int? fixedLines;
  final TextOverflow? overflow;
  final double? letterSpacing;
  final double? opacity;

  const RadiusButton({
    this.text,
    this.fontSize,
    this.fontFamily = Style.fontMedium,
    this.textColor = Colors.black,
    this.backgroundColor = Style.primaryColor,
    this.backgroundGradient,
    this.shadow,
    this.border,
    this.radius = 10,
    this.borderRadiusEdge = '',
    this.preIcon,
    this.preIconPadding = const EdgeInsets.only(right: 3),
    this.postIcon,
    this.soundPath,
    this.isLocal = false,
    this.isFullWidth = false,
    this.avoidMax = false,
    this.isDisable = false,
    this.isLoading = false,
    this.indicatorSize = 24,
    this.onTap,
    this.maxWidth = 300,
    this.maxLines = 1,
    this.fixedLines,
    this.overflow,
    this.letterSpacing,
    this.opacity = 1.0,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.innerPadding =
        const EdgeInsets.only(top: 16, bottom: 16, left: 8, right: 8),
    this.outsidePadding =
        const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return soundPath != null
        ? IgnorePointer(
            ignoring: isLoading!,
            child: Opacity(
              opacity: isDisable! ? 0.75 : 1.0,
              child: GestureDetector(
                onTap: isDisable! ? null : onTap,
                child: Padding(
                  padding: outsidePadding!,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        constraints: avoidMax!
                            ? const BoxConstraints()
                            : BoxConstraints(maxWidth: maxWidth!),
                        decoration: BoxDecoration(
                            borderRadius: borderRadiusEdge == BORDER_LEFT
                                ? BorderRadius.only(
                                    topLeft: Radius.circular(radius!),
                                    bottomLeft: Radius.circular(radius!))
                                : borderRadiusEdge == BORDER_RIGHT
                                    ? BorderRadius.only(
                                        topRight: Radius.circular(radius!),
                                        bottomRight: Radius.circular(radius!))
                                    : BorderRadius.circular(radius!),
                            border: border,
                            boxShadow: shadow,
                            gradient: isDisable! ? null : backgroundGradient,
                            color: isDisable! ? Colors.white : backgroundColor),
                        child: Padding(
                          padding: innerPadding!,
                          child: Row(
                            mainAxisSize: isFullWidth!
                                ? MainAxisSize.max
                                : MainAxisSize.min,
                            mainAxisAlignment: mainAxisAlignment!,
                            children: <Widget>[
                              preIcon == null
                                  ? const SizedBox()
                                  : Padding(
                                      padding: preIconPadding!,
                                      child: preIcon,
                                    ),
                              Flexible(
                                child: PaddingText(
                                  maxLines: maxLines,
                                  overflow: overflow,
                                  text: text,
                                  fontFamily: fontFamily ?? Style.fontBold,
                                  fontSize: fontSize ?? 16.sp,
                                  color: textColor,
                                  textAlign: TextAlign.center,
                                  letterSpacing: letterSpacing ?? -0.41.sp,
                                ),
                              ),
                              postIcon == null
                                  ? const SizedBox()
                                  : Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: postIcon,
                                    )
                            ].where((o) => o != const SizedBox()).toList(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        : IgnorePointer(
            ignoring: isLoading!,
            child: Opacity(
              opacity: isDisable! ? 0.75 : 1.0,
              child: GestureDetector(
                child: Padding(
                  padding: outsidePadding!,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        constraints: avoidMax!
                            ? const BoxConstraints()
                            : BoxConstraints(maxWidth: maxWidth!),
                        decoration: BoxDecoration(
                            borderRadius: borderRadiusEdge == BORDER_LEFT
                                ? BorderRadius.only(
                                    topLeft: Radius.circular(radius!),
                                    bottomLeft: Radius.circular(radius!))
                                : borderRadiusEdge == BORDER_RIGHT
                                    ? BorderRadius.only(
                                        topRight: Radius.circular(radius!),
                                        bottomRight: Radius.circular(radius!))
                                    : BorderRadius.circular(radius!),
                            border: border,
                            boxShadow: shadow,
                            gradient: isDisable! ? null : backgroundGradient,
                            color: isDisable! ? Colors.grey : backgroundColor),
                        child: Padding(
                          padding: innerPadding!,
                          child: Row(
                            mainAxisSize: isFullWidth!
                                ? MainAxisSize.max
                                : MainAxisSize.min,
                            mainAxisAlignment: mainAxisAlignment!,
                            children: <Widget>[
                              preIcon == null
                                  ? const SizedBox()
                                  : Padding(
                                      padding: preIconPadding!,
                                      child: preIcon,
                                    ),
                              Flexible(
                                child: PaddingText(
                                  maxLines: maxLines,
                                  overflow: overflow,
                                  text: text,
                                  fontFamily: fontFamily ?? Style.fontBold,
                                  fontSize: fontSize ?? 16.sp,
                                  color: textColor,
                                  textAlign: TextAlign.center,
                                  letterSpacing: letterSpacing ?? -0.41.sp,
                                ),
                              ),
                              postIcon == null
                                  ? const SizedBox()
                                  : Padding(
                                      padding: EdgeInsets.only(
                                          left: 3.w, right: 13.w),
                                      child: postIcon,
                                    )
                            ].where((o) => o != const SizedBox()).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  if (onTap != null && !isDisable!) {
                    onTap!();
                  }
                },
              ),
            ),
          );
  }
}
