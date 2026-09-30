import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/kalkulator_page.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:flutter_application_1/Pages/login_clone.dart';
import 'package:flutter_application_1/Pages/login_clone_page.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
 @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning App",
      initialRoute: Routes.registration,
      getPages: Routes.myPages,
    );
  }
}
