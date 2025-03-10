import 'package:apptest_food/constants/image_constant.dart';
import 'package:apptest_food/helpers/extension/responsive.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoDataView extends StatelessWidget {
  final String? message;

  const NoDataView({this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 10),
          Lottie.asset(
            ImageConstant.noData,
            width: 72.w,
            height: 72.w,
            fit: BoxFit.scaleDown,
            repeat: true,
          ),
          Container(
            margin: EdgeInsets.only(
                bottom: 10.w, top: 16.w, left: 16.w, right: 16.w),
            child: Text(
              (message == null) ? 'Không có dữ liệu' : message!,
              style: Style().normalTextBold,
            ),
          ),
        ],
      ),
    );
  }
}
