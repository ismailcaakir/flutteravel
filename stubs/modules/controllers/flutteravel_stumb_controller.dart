import 'package:get/get.dart';
import '../../controller.dart';

class FlutteravelStumbController extends BaseController {
  final _example = 0.obs;
  get example => _example.value;
  set example(value) => _example.value = value;
}
