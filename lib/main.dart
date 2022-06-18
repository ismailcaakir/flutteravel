// import 'package:app_tracking_transparency/app_tracking_transparency.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:starter/config/themes.dart';
import 'init.dart';
import 'splash_screen.dart';
import 'config/pages.dart';
import 'lang/translate.dart';

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
            return GetMaterialApp(
              builder: EasyLoading.init(
                builder: (context, child) {
                  return MediaQuery(
                    child: child!,
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
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
          } else {
            return const SplashScreen();
          }
        },
      ),
    );
  }
}
