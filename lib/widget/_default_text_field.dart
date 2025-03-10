import 'package:apptest_food/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DefaultTextField extends StatelessWidget {
  final String? labelText;
  final TextAlign? textAlign;
  final int? maxLines;
  final int? maxLength;
  final int? fixedLines;
  final bool? softWrap;
  final EdgeInsetsGeometry? outsidePadding;
  final EdgeInsetsGeometry? innerPadding;
  final TextEditingController? controller;
  final String? errorMsg;
  final String? hintText;
  final Color? hintColor;
  final bool? isAutoFocus;
  final double? width;
  final double? height;
  final String? borderRadiusEdge;
  final FocusNode? focusNode;
  final bool? isIgnorePointer;
  final ValueChanged<String>? onChanged;
  final double? blurRadius;
  final double? radius;
  final Function? onSubmitted;
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
  final bool showBoder;
  final bool? filled;
  final bool readOnly;
  final Color? fillColor;
  final Widget? suffix;
  final GestureTapCallback? onTabSuffix;

  const DefaultTextField({
    this.labelText,
    this.textAlign = TextAlign.left,
    this.hintText = '',
    this.errorMsg,
    this.hintColor,
    this.maxLines = 1,
    this.maxLength,
    this.fixedLines,
    this.softWrap = true,
    this.readOnly = false,
    this.isAutoFocus = false,
    this.controller,
    this.textInputType = TextInputType.text,
    this.width = 150,
    this.height,
    this.borderRadiusEdge = '',
    this.focusNode,
    this.isIgnorePointer = false,
    this.onChanged,
    this.onSubmitted,
    this.radius = 25,
    this.blurRadius = 0,
    this.enabled = true,
    this.letterSpacing,
    this.inputFormatter,
    this.obscureText = false,
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
    this.onTabSuffix,
    Key? key,
    this.showBoder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: outsidePadding!,
      child: SizedBox(
        width: width,
        height: height,
        child: TextField(
          onTap: () {
            if (onTab != null) {
              onTab!();
            }
          },
          autofillHints: autoFillHints,
          focusNode: focusNode,
          readOnly: readOnly,
          cursorColor: context.textTheme.displayLarge!.color,
          autofocus: isAutoFocus!,
          textAlign: textAlign!,
          controller: controller,
          onChanged: onChanged,
          keyboardType: textInputType,
          maxLength: maxLength,
          maxLines: maxLines,
          inputFormatters: inputFormatter,
          obscureText: obscureText!,
          decoration: InputDecoration(
            labelStyle: Style().normalTextBold,
            hintText: hintText,
            hintStyle: Style().largeTextBold.copyWith(color: Style.primary100),
            filled: filled,
            fillColor:
                !focusNode!.hasFocus ? Style.primary100 : Style.primary100,
            errorText: errorMsg,
            errorStyle: const TextStyle(height: 0, color: Colors.transparent),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius!),
                borderSide: showBoder
                    ? const BorderSide(
                        width: 1, style: BorderStyle.none, color: Colors.red)
                    : BorderSide.none),
            focusedBorder: (enableFocusBorder ?? false)
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: Style.primary100, width: 1.0),
                    borderRadius: BorderRadius.circular(radius!),
                  )
                : null,
            errorBorder: errorMsg != null
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                    borderRadius: BorderRadius.circular(radius!),
                  )
                : null,
            contentPadding: innerPadding,
            suffixIcon: suffix != null
                ? GestureDetector(
                    // behavior: HitTestBehavior.translucent,
                    child: suffix,
                    onTap: onTabSuffix,
                  )
                : null,
          ),
          style: Style().largeTextBold,
        ),
      ),
    );
  }
}
