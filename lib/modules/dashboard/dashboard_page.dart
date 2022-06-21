import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:starter/modules/premium_one/premium_one_page.dart';
import 'dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> with RouteAware {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: _onPageChanged,
        physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
        children: [
          SafeArea(
            child: ElevatedButton(
              onPressed: () {
                showBarModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return PremiumOnePage();
                    });
              },
              child: Text('DENEME'),
            ),
          ),
          SafeArea(
            child: Text('List'),
          ),
          SafeArea(
            child: Text('Profile'),
          ),
          SafeArea(
            child: Text('Profile'),
          ),
        ],
        controller: controller.pageController,
      ),
      bottomNavigationBar: buildBottomNavigationMenu(context, controller),
    );
  }

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(
      () {
        return BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.task),
              label: 'Home'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.calendar_today_sharp),
              label: 'List'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person_pin),
              label: 'Profile'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: 'Settings'.tr,
            ),
          ],
          currentIndex: controller.currentIndex.toInt(),
          onTap: _onItemTapped,
        );
      },
    );
  }

  void _onItemTapped(int value) {
    controller.pageController.jumpToPage(value);
  }

  void _onPageChanged(int value) {}
}
