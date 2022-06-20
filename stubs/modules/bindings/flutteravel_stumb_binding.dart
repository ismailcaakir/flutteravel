import 'package:get/get.dart';
import '../controllers/flutteravel_stumb_controller.dart';

class FlutteravelStumbBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlutteravelStumbController>(
      () => FlutteravelStumbController(),
    );
  }
}
