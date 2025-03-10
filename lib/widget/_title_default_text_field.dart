import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class TitleDefaultTextField extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final TextAlign? textAlign;
  final int? maxLines;
  final int? maxLength;
  final int? fixedLines;
  final bool? softWrap;
  final EdgeInsetsGeometry? outsidePadding;
  final EdgeInsetsGeometry? innerPadding;
  final TextEditingController controller;
  final String? errorMsg;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final TextStyle? titleStyle;
  final Color? hintColor;
  final bool? isAutoFocus;
  final double? width;
  final double? height;
  final String? borderRadiusEdge;
  final FocusNode? focusNode;
  final bool? isIgnorePointer;
  final bool readOnly;
  final ValueChanged<String>? onChanged;
  final double? blurRadius;
  final double? radius;
  final Function()? onSubmitted;
  final TextInputType? textInputType;
  final bool? enabled;
  final bool? obscureText;
  final double? letterSpacing;
  final List<TextInputFormatter>? inputFormatter;
  final Widget? preIcon;
  final Widget? postIcon;
  final List<String>? autoFillHints;
  final Function? onTab;
  final bool? enableFocusBorder;
  final bool? filled;
  final Color? fillColor;
  final Widget? suffix;
  final String? suffixText;
  final TextStyle? suffixStyle;
  final GestureTapCallback? onTabSuffix;
  final bool? required;
  final LinearGradient? gradient;
  final String? Function(String?)? validator;
  final InputBorder? border;
  final TextInputAction? textInputAction;
  final double? heightTextField;
  final double? widgetTextField;

  const TitleDefaultTextField({
    this.title,
    this.subTitle,
    this.textAlign = TextAlign.left,
    this.hintText = '',
    this.errorMsg,
    this.hintColor,
    this.hintStyle,
    this.textStyle,
    this.titleStyle,
    this.maxLines = 1,
    this.maxLength,
    this.fixedLines,
    this.softWrap = true,
    this.isAutoFocus = false,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.width = 150,
    this.height,
    this.borderRadiusEdge = '',
    this.focusNode,
    this.isIgnorePointer = false,
    this.readOnly = false,
    this.onChanged,
    this.onSubmitted,
    this.radius = 12,
    this.blurRadius = 0,
    this.enabled = true,
    this.letterSpacing,
    this.inputFormatter,
    this.obscureText = false,
    this.required = false,
    this.preIcon,
    this.postIcon,
    this.innerPadding =
        const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
    this.outsidePadding =
        const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
    this.autoFillHints,
    this.onTab,
    this.enableFocusBorder = true,
    this.filled = true,
    this.fillColor,
    this.suffix,
    this.suffixText,
    this.suffixStyle,
    this.onTabSuffix,
    this.gradient,
    this.validator,
    this.border,
    this.textInputAction,
    this.heightTextField,
    this.widgetTextField,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: outsidePadding!,
      child: SizedBox(
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (title != null || subTitle != null)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(title ?? '',
                              style: titleStyle ?? Style().smallTextRegular),
                          (required ?? false)
                              ? Text(
                                  ' *',
                                  style: titleStyle?.copyWith(
                                        color: Style.primary100,
                                      ) ??
                                      Style()
                                          .normalTextRegular
                                          .copyWith(color: Style.primary100),
                                )
                              : const SizedBox(),
                        ],
                      ),
                      Text(
                        subTitle ?? '',
                        style: Style().largeTextRegular,
                      ),
                    ],
                  )
                : const SizedBox(),
            SizedBox(
              height: (title != null || subTitle != null) ? 5 : 0,
            ),
            SizedBox(
              height: heightTextField,
              width: widgetTextField,
              child: TextFormField(
                  validator: validator,
                  onTap: () {
                    if (onTab != null) {
                      onTab!();
                    }
                  },
                  onEditingComplete: onSubmitted,
                  readOnly: readOnly,
                  autofillHints: autoFillHints,
                  focusNode: focusNode,
                  cursorColor: context.textTheme.bodyLarge!.color,
                  autofocus: isAutoFocus!,
                  textAlign: textAlign!,
                  controller: controller,
                  onChanged: onChanged,
                  keyboardType: textInputType,
                  textInputAction: textInputAction,
                  textCapitalization: TextCapitalization.sentences,
                  maxLength: maxLength,
                  maxLines: maxLines,
                  inputFormatters: inputFormatter,
                  obscureText: obscureText!,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    prefixIcon: preIcon,
                    counterText: '',
                    labelStyle: Style().smallTextRegular,
                    hintText: hintText,
                    hintStyle: hintStyle ??
                        Style().smallTextRegular.copyWith(
                              color: Style.gray3,
                            ),
                    filled: filled,
                    fillColor: fillColor ?? Colors.transparent,
                    errorText: errorMsg,
                    errorStyle: const TextStyle(height: 0, color: Colors.red),
                    border: border ??
                        OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Style.white, width: 1.0),
                          borderRadius: BorderRadius.circular(radius!),
                        ),
                    focusedBorder: (enableFocusBorder ?? false)
                        ? OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Style.primaryColor, width: 2.0.w),
                            borderRadius: BorderRadius.circular(radius!),
                          )
                        : InputBorder.none,
                    errorBorder: errorMsg != null
                        ? OutlineInputBorder(
                            borderSide: BorderSide(
                                color: context.theme.primaryColorDark,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(radius!),
                          )
                        : null,
                    contentPadding: innerPadding,
                    suffixText: suffixText,
                    suffixStyle: suffixStyle,
                    suffixIcon: suffix != null
                        ? GestureDetector(
                            // behavior: HitTestBehavior.translucent,
                            child: suffix,
                            onTap: onTabSuffix,
                          )
                        : null,
                  ),
                  style: textStyle ?? Style().normalTextRegular),
            ),
          ],
        ),
      ),
    );
  }
}
