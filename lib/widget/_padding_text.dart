import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:flutter/material.dart';

import '_marquee_widget.dart';

class PaddingText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final TextAlign? textAlign;
  final String? fontFamily;
  final Color? color;
  final int? maxLines;
  final bool? softWrap;
  final double? height;
  final TextDecoration? textDecoration;
  final EdgeInsetsGeometry? padding;
  final TextOverflow? overflow;
  final bool? isMarquee;
  final double? letterSpacing;
  final double? wordSpacing;

  const PaddingText(
      {super.key,
      this.text,
      this.fontSize,
      this.textAlign = TextAlign.left,
      this.fontFamily = Style.fontMedium,
      this.maxLines,
      this.softWrap = true,
      this.height,
      this.textDecoration = TextDecoration.none,
      this.color = const Color(0xff2A2B31),
      this.isMarquee = false,
      this.overflow = TextOverflow.clip,
      this.letterSpacing,
      this.wordSpacing,
      this.padding = const EdgeInsets.all(0)});

  @override
  Widget build(BuildContext context) {
    return isMarquee!
        ? MarqueeWidget(
            direction: Axis.horizontal, child: _generatePaddingText())
        : _generatePaddingText();
  }

  Widget _generatePaddingText() {
    return Padding(
      padding: padding!,
      child: Text(
        text == null ? '' : text!,
        overflow: overflow,
        textAlign: textAlign,
        softWrap: softWrap,
        maxLines: maxLines,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize ?? 14.sp,
          color: color,
          height: height,
          letterSpacing: letterSpacing ?? 1.sp,
          decoration: textDecoration,
        ),
      ),
    );
  }
}
