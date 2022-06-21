// import 'package:app_tracking_transparency/app_tracking_transparency.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'core/routes/pages.dart';
import 'core/lang/translate.dart';
import 'core/theme/themes.dart';
import 'init.dart';
import 'splash_screen.dart';
import 'package:sizer/sizer.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(StarterApp());
}

class StarterApp extends StatelessWidget {
  StarterApp({Key? key}) : super(key: key);

  final Future _initFuture = Init.initialize();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: _initFuture,
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Sizer(
              builder: (context, orientation, deviceType) {
                return GetMaterialApp(
                  builder: EasyLoading.init(
                    builder: (context, child) {
                      return MediaQuery(
                        child: child!,
                        data:
                            MediaQuery.of(context).copyWith(textScaleFactor: 1),
                      );
                    },
                  ),
                  getPages: AppPages.pages,
                  translations: Translate(),
                  locale: const Locale('en', 'US'),
                  fallbackLocale: const Locale('en', 'US'),
                  theme: AppTheme.lightTheme,
                  initialRoute: snapshot.data!,
                );
              },
            );
          } else {
            return const SplashScreen();
          }
        },
      ),
    );
  }
}
