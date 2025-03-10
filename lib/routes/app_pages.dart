import 'package:apptest_food/page/dashboard/dashboard_binding.dart';
import 'package:apptest_food/page/dashboard/dashboard_page.dart';
import 'package:apptest_food/page/home/home_binding.dart';
import 'package:apptest_food/page/home/home_page.dart';
// import 'package:apptest_food/page/otp/otp_binding.dart';
// import 'package:apptest_food/page/otp/otp_page.dart';
import 'package:apptest_food/page/meal_detail/meal_detail_binding.dart';
import 'package:apptest_food/page/meal_detail/meal_detail_page.dart';
// import 'package:apptest_food/page/send_otp/send_otp_binding.dart';
// import 'package:apptest_food/page/send_otp/send_otp_page.dart';
import 'package:apptest_food/page/splash/splash.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.dashboard;

  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.mealDetail,
      page: () => const MealDetailPage(),
      binding: MealDetailBinding(),
    ),

    // GetPage(
    //   name: AppRoutes.otp,
    //   page: () => const OtpPage(),
    //   binding: OtpBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.sendOtp,
    //   page: () => const SendOtpPage(),
    //   binding: SendOtpBinding(),
    // ),
  ];
}
