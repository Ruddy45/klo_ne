import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klo_ne/screens/nav_screens.dart';


void main() {
  runApp (MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(brightness: Brightness.light),
debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}

