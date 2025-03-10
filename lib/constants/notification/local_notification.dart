// import 'dart:convert';
// import 'dart:math';
// import 'dart:developer' as logg;
// import 'dart:typed_data';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();
// NotificationAppLaunchDetails? notificationAppLaunchDetails;

// Random rd = Random();
// late NotificationDetails platformChannelSpecifics;

// class LocalNotification {
//   LocalNotification._();
//   static const String _description = 'CHANNEL OF XMHG';

//   static setup() async {
//     //setup local notification

//     notificationAppLaunchDetails =
//         await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

//     var initializationSettingsAndroid =
//         const AndroidInitializationSettings('@mipmap/ic_launcher');
//     // Note: permissions aren't requested here just to demonstrate that can be done later using the `requestPermissions()` method
//     // of the `IOSFlutterLocalNotificationsPlugin` class
//     var initializationSettingsIOS = IOSInitializationSettings(
//         requestAlertPermission: true,
//         requestBadgePermission: true,
//         requestSoundPermission: true,
//         defaultPresentAlert: true,
//         defaultPresentSound: true,
//         defaultPresentBadge: true,
//         onDidReceiveLocalNotification:
//             (int id, String? title, String? body, String? payload) async {
//           flutterLocalNotificationsPlugin.cancel(id);
//         });
//     var initializationSettings = InitializationSettings(
//         android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onSelectNotification: (String? payload) async {
//       Map<String, dynamic> data =
//           jsonDecode(payload ?? '') as Map<String, dynamic>;
//       logg.log('PAYLOAD DATA $data');
//     });
//     var androidPlatformChannelSpecifics = AndroidNotificationDetails(
//         'EXAMHUB', 'EXAMHUB NOTIFICATION',
//         channelDescription: _description,
//         importance: Importance.max,
//         priority: Priority.high,
//         playSound: true,
//         vibrationPattern: Int64List.fromList([0, 50000]),
//         enableVibration: true,
//         ticker: 'ticker');
//     var iOSPlatformChannelSpecifics = const IOSNotificationDetails();
//     platformChannelSpecifics = NotificationDetails(
//         android: androidPlatformChannelSpecifics,
//         iOS: iOSPlatformChannelSpecifics);
//   }

//   static Future<void> showNotification(
//       String? title, String? body, String? payload) async {
//     await flutterLocalNotificationsPlugin.show(
//         rd.nextInt(1000), title, body, platformChannelSpecifics,
//         payload: payload);
//   }
// }
