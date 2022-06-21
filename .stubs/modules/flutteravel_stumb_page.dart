import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/flutteravel_stumb_controller.dart';
import 'views/flutteravel_stumb_view.dart';

class FlutteravelStumbPage extends GetView<FlutteravelStumbController> {
  const FlutteravelStumbPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FlutteravelStumbController>(
      init: FlutteravelStumbController(),
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: FlutteravelStumbView(),
          ),
        );
      },
    );
  }
}
