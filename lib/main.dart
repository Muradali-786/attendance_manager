import 'package:attendance_manager/utils/routes/route_name.dart';
import 'package:attendance_manager/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyAWsg1T9ORtQtO11brH3w7nn9mfjjKtots",
              appId: "1:765191915920:android:e95cc41e95abeb42eb4b15",
              messagingSenderId: "765191915920",
              projectId: "attendance-manager-8c1ea",
              storageBucket: "gs://attendance-manager-8c1ea.appspot.com"))
      : Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance Manager',
      initialRoute: RouteName.splash,
      onGenerateRoute: Routes.generateRoute,

    );
  }
}
