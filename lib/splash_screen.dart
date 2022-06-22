import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Image.asset(
              'lib/assets/images/splash_screen_background.jpg',
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              children: const [
                Expanded(
                  flex: 9,
                  child: Center(
                    child: FlutterLogo(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: FlutterLogo(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
