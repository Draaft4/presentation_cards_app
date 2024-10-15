import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation_cards/app/modules/home_binding.dart';
import 'package:presentation_cards/app/modules/home_page.dart';
import 'package:presentation_cards/app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialBinding: HomeBinding(),
      home: HomePage(),
      getPages: AppPages.pages,
    );
  }
}