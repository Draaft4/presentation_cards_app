import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation_cards/app/bindings/login_binding.dart';
import 'package:presentation_cards/app/routes/app_pages.dart';
import 'package:presentation_cards/app/ui/pages/login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Presentation Cards',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialBinding: LoginBinding(),
      home: LoginPage(),
      getPages: AppPages.pages,
    );
  }
}