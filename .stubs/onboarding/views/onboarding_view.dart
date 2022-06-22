import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  OnboardingController controller = Get.find();
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      imageFlex: 1,
      titlePadding: EdgeInsets.only(bottom: 30),
      bodyFlex: 4,
      imagePadding: EdgeInsets.zero,
      bodyPadding: EdgeInsets.only(top: 30, left: 0, right: 0, bottom: 0),
      pageColor: Colors.transparent,
      contentMargin: EdgeInsets.all(0),
      fullScreen: true,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          titleWidget: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const FlutterLogo(size: 333),
          ),
          bodyWidget: Column(
            children: [
              Text(
                'Flutteravel'.tr,
                style: context.textTheme.titleLarge!.copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Lorem ipsum dolor sit amet!',
                style: context.textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
            ],
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const FlutterLogo(size: 333),
          ),
          bodyWidget: Column(
            children: [
              Text(
                'Flutteravel'.tr,
                style: context.textTheme.titleLarge!.copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Lorem ipsum dolor sit amet!',
                style: context.textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
            ],
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const FlutterLogo(size: 333),
          ),
          bodyWidget: Column(
            children: [
              Text(
                'Flutteravel'.tr,
                style: context.textTheme.titleLarge!.copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Lorem ipsum dolor sit amet!',
                style: context.textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
            ],
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => controller.onIntroEnd(context),
      onSkip: () => controller.onIntroEnd(context),
      showSkipButton: true,
      skipOrBackFlex: 1,
      nextFlex: 1,
      showBackButton: false,
      dotsFlex: 3,
      back: const Icon(Icons.arrow_back),
      skip: Text(
        'Skip'.tr,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      next: const Icon(
        Icons.arrow_forward,
      ),
      done: Text(
        'Done'.tr,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 2.0),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
