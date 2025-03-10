import 'package:flutter/material.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:apptest_food/widget/_padding_text.dart';

class IconToastWidget extends StatefulWidget {
  final Color? backgroundColor;
  final Color? color;
  final Widget? icon;
  final String? message;
  final String? fontFamily;
  final double? fontSize;
  final double? height;
  final double? width;
  final String? assetName;
  final EdgeInsetsGeometry? padding;

  const IconToastWidget({
    super.key,
    this.backgroundColor,
    this.color,
    this.icon,
    this.message,
    this.fontFamily,
    this.fontSize,
    this.height,
    this.width,
    @required this.assetName,
    this.padding,
  });

  factory IconToastWidget.fail(
          {String? msg, EdgeInsetsGeometry? contentPadding}) =>
      IconToastWidget(
        message: msg,
        assetName: 'assets/ic_fail.png',
        backgroundColor: const Color(0xf0f5222d),
        color: Style.white,
        icon: Icon(Icons.info_outline, size: 16.w, color: Style.white),
        padding: contentPadding,
      );

  factory IconToastWidget.warning(
          {String? msg, EdgeInsetsGeometry? contentPadding}) =>
      IconToastWidget(
        message: msg,
        assetName: 'assets/ic_fail.png',
        backgroundColor: const Color(0xf0ffec3d),
        color: Style.primary100,
        icon: Icon(
          Icons.info_outline,
          size: 16.w,
          color: Style.primary100,
        ),
        padding: contentPadding,
      );

  factory IconToastWidget.success(
          {String? msg, EdgeInsetsGeometry? contentPadding}) =>
      IconToastWidget(
        message: msg,
        assetName: 'assets/ic_success.png',
        backgroundColor: const Color(0xf0a0d911),
        color: Style.primary100,
        icon: Icon(
          Icons.check_circle_outline,
          size: 16.w,
          color: Style.primary100,
        ),
        padding: contentPadding,
      );

  @override
  State<StatefulWidget> createState() {
    return _IconToastWidgetState();
  }
}

class _IconToastWidgetState extends State<IconToastWidget>
    with TickerProviderStateMixin<IconToastWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Material(
      color: Colors.transparent,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.w),
          padding: widget.padding ??
              EdgeInsets.symmetric(vertical: 15.w, horizontal: 15.w),
          decoration: ShapeDecoration(
            color: widget.backgroundColor ?? const Color(0x9F000000),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: widget.icon,
              ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: PaddingText(
                    text: widget.message,
                    fontFamily: widget.fontFamily,
                    fontSize: widget.fontSize,
                    color: widget.color,
                  ),
                ),
              ),
            ],
          )),
    );

    return content;
  }
}
