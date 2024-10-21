// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:presentation_cards/app/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        body:  Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}