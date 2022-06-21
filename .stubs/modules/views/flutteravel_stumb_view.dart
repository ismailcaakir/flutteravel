import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/flutteravel_stumb_controller.dart';

class FlutteravelStumbView extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  FlutteravelStumbView({Key? key}) : super(key: key);

  @override
  State<FlutteravelStumbView> createState() => _FlutteravelStumbViewState();
}

class _FlutteravelStumbViewState extends State<FlutteravelStumbView> {
  FlutteravelStumbController controller = Get.find();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          FlutterLogo(),
          Text('Hello FlutteravelStumb!'),
        ],
      ),
    );
  }
}
