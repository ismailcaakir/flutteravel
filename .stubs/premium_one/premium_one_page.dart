import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/config/colors.dart';
import '../../core/utils/media_helper.dart';
import 'controllers/premium_one_controller.dart';
import 'views/premium_one_view.dart';

class PremiumOnePage extends GetView<PremiumOneController> {
  const PremiumOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PremiumOneController>(
      init: PremiumOneController(),
      builder: (_) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MediaHelper.getImagePath(
                "premium_one/background.png",
              )),
              fit: BoxFit.cover,
            ),
            color: AppColor.black,
          ),
          child: Scaffold(
            body: SafeArea(
              child: PremiumOneView(),
            ),
          ),
        );
      },
    );
  }
}
