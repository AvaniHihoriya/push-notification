import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:push_notification/final_page.dart';
import 'package:push_notification/main_page.dart';

import 'notifiction.dart';

// const AndroidNotificationChannel channel= AndroidNotificationChannel(
//   'high_importance_channel',
//   'High Importance Notification',
//   'This channel is used for important notification.',
//   importance: Importance.high,
//   playSound: true,
// );
//
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();
//
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   print('A bg Message just showed up : ${message.messageId}');
// }

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  //
  // await flutterLocalNotificationsPlugin
  //   .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
  //   ?.createNotificationChannel(channel);
  //
  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true
  // );

    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(const MyApp());
    await NotificationServices.initialize();
  }

class MyApp extends StatelessWidget {
  Future<FirebaseApp> _intializeFirebse() async{
    FirebaseApp firebaseApp =await Firebase.initializeApp();
    return firebaseApp;
  }
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FinalPage()
          );

  }
}


class FinalPage extends StatefulWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Push"),
      ),
      body: Container(
        child:
        Text("hello"),
      ),
    );
  }
}






