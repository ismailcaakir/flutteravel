import 'package:get/get.dart';

class PremiumOneController extends GetxController {
  final _example = 0.obs;
  get example => _example.value;
  set example(value) => _example.value = value;

  void subscribe() {
    Get.snackbar('OKAY!', 'HURRA I\'M SUBSCRIBED');
  }
}
