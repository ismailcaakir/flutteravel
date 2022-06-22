import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/onboarding_controller.dart';
import 'views/onboarding_view.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      init: OnboardingController(),
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: OnboardingView(),
          ),
        );
      },
    );
  }
}
