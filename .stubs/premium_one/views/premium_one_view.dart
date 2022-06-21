import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../core/config/colors.dart';
import '../../../core/utils/media_helper.dart';
import '../controllers/premium_one_controller.dart';

class PremiumOneView extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  PremiumOneView({Key? key}) : super(key: key);

  @override
  State<PremiumOneView> createState() => _PremiumOneViewState();
}

class _PremiumOneViewState extends State<PremiumOneView> {
  PremiumOneController controller = Get.find();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 36, right: 36),
      child: Column(
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              alignment: Alignment.center,
              child: Text(
                'How Your Free Trial Works'.tr.toUpperCase(),
                style: context.textTheme.titleLarge!
                    .copyWith(color: AppColor.white),
                textAlign: TextAlign.center,
              ),
            ),
            flex: 3,
          ),
          Flexible(
            child: Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      MediaHelper.getImagePath(
                        'premium_one/timeline.png',
                      ),
                      width: 34,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Today'.tr,
                              style: context.textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Become a premium member for full acces to all content and using all premium featurest'
                                  .tr,
                              softWrap: true,
                              style: context.textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 9.sp,
                                color: const Color.fromRGBO(186, 186, 186, 1),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'In 2 days'.tr,
                              style: context.textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Get remindet about your trial's expiration".tr,
                              softWrap: true,
                              style: context.textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 9.sp,
                                color: const Color.fromRGBO(186, 186, 186, 1),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'In 7 days'.tr,
                              style: context.textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "You will be charged - cancel any time earlier"
                                  .tr,
                              softWrap: true,
                              style: context.textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 9.sp,
                                color: const Color.fromRGBO(186, 186, 186, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [],
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          Flexible(
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(horizontal: double.minPositive),
              child: Text(
                '7 days free trial then \$12.99/Month'.tr,
                style: context.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            flex: 2,
          ),
          Flexible(
            child: ElevatedButton(
              onPressed: () {
                controller.subscribe();
              },
              child: Text(
                'Start Free Trial'.tr,
                style: context.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.infinite,
                primary: const Color.fromRGBO(0, 87, 255, 1),
              ),
            ),
            flex: 1,
          ),
          Flexible(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Cancel Anytime'.tr,
                    style: context.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                      color: const Color.fromRGBO(112, 112, 112, 1),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Refund Policy'.tr,
                          style: context.textTheme.bodyMedium!.copyWith(
                            fontSize: 9.sp,
                            color: const Color.fromRGBO(164, 225, 214, 1),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Terms of use'.tr,
                          style: context.textTheme.bodyMedium!.copyWith(
                            fontSize: 9.sp,
                            color: const Color.fromRGBO(164, 225, 214, 1),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            flex: 2,
          )
        ],
      ),
    );
  }
}
