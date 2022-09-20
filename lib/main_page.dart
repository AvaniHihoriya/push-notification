// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:push_notification/main.dart';
//
// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       RemoteNotification? notification = message.notification;
//       AndroidNotification? androidNotification =message.notification?.android;
//       if(notification != null && androidNotification !=null){
//         flutterLocalNotificationsPlugin.show(
//           notification.hashCode,
//           notification.title,
//           notification.body,
//           NotificationDetails(
//             android: AndroidNotificationDetails(
//               // channel.id,
//               channel.name,
//               channel.description,
//               color:
//             )
//           )
//         );
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
