import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.routes["dashboardRoute"]!,
      page: () => const Scaffold(),
      // binding: ExampleBinding(),
    ),
  ];
}
