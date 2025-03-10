import 'package:apptest_food/constants/config_constant.dart';
import 'package:apptest_food/data/models/meals_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:apptest_food/constants/notification/notification.dart';
import 'package:apptest_food/data/database_local/app_prefs.dart';
import 'package:apptest_food/lang/translation_service.dart';
import 'package:apptest_food/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:apptest_food/style/app_style.dart';
import 'package:get/get_core/src/smart_management.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(MealsModelAdapter());
  await Hive.openBox<MealsModel>(BOX_MEALS);

  runApp(const MyApp());
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.circle
    ..loadingStyle = EasyLoadingStyle.custom
    ..textColor = Style.white
    ..userInteractions = false
    ..backgroundColor = Style.primary100
    ..radius = 10.0
    ..indicatorColor = Style.white
    ..dismissOnTap = true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
      enableLog: true,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode: ThemeMode.light,
      defaultTransition: Transition.fade,
      builder: EasyLoading.init(),
      smartManagement: SmartManagement.keepFactory,
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'AI Chat',
    );
  }
}
