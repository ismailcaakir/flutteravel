import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final _example = 0.obs;
  get example => _example.value;
  set example(value) => _example.value = value;

  onIntroEnd(BuildContext context) {
    Get.offAndToNamed('/dashboard');
  }
}
