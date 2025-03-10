import 'dart:math';

import 'package:apptest_food/utils/screen_util.dart';

extension ResponsiveExtension on num {
  ///[ScreenUtil.setWidth]
  double get w => ScreenUtil().setScale(toDouble());

  ///[ScreenUtil.setHeight]
  double get h => ScreenUtil().setScale(toDouble());

  ///[ScreenUtil.setSp]
  double get sp => ScreenUtil().setSp(toDouble());

  ///smart size :  it check your value if it is bigger than your value set your value
  ///for example you have set 16.sm() , if for your screen 16.sp() bigger than 16 it will  set 16 not 16.sp()
  ///I think that it is good for save size balance on big sizes of screen
  double get sm => min(toDouble(), sp);
}
