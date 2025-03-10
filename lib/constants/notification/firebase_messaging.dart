// import 'dart:convert';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'notification.dart';

// Future<void> backgroundMessageHandler(RemoteMessage message) async {
//   print("OnBackgroundMessage: $message");
//   return FirebaseCloudMessaging._handler(message);
// }

// class FirebaseCloudMessaging {
//   FirebaseCloudMessaging._();
//   static final FirebaseMessaging instance = FirebaseMessaging.instance;

//   static initFirebaseMessaging() async {
//     instance.requestPermission(
//         alert: true,
//         sound: true,
//         announcement: true,
//         criticalAlert: true,
//         badge: true);
//     FirebaseMessaging.onMessage.listen((message) async {
//       print("OnMessage: ${message.notification!.title}");
//       _handler(message);
//     });
//     FirebaseMessaging.onMessageOpenedApp.listen((message) {
//       print("OnMessageOpenedApp: ${message.notification!.title}");
//       _handler(message);
//     });
//     FirebaseMessaging.onBackgroundMessage(backgroundMessageHandler);
//   }

//   static _handler(RemoteMessage message) async {
//     Map<String, dynamic> payload = message.data;
//     print('payload ${message.data}');
//     print("HANDLER NOTFIY");
//     LocalNotification.showNotification(message.notification?.title,
//         message.notification?.body, '${jsonEncode(payload)}');
//   }
// }
