import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules/dashboard/dashboard_binding.dart';
import '../../modules/dashboard/dashboard_page.dart';
import './routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.routes["dashboardRoute"]!,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
