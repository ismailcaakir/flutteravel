import 'package:get/get.dart';
import '../controllers/premium_one_controller.dart';

class PremiumOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PremiumOneController>(
      () => PremiumOneController(),
    );
  }
}
