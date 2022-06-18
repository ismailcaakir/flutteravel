import 'dart:io';
import 'dart:math';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'core/config/config.dart';
//import './env/firebase.dart';

class Init {
  static const _secureStorage = FlutterSecureStorage();
  static final _storage = GetStorage(AppConfig.storageName);

  static Future<dynamic> initialize() async {
    await Future.delayed(Duration(seconds: 2));
    await _loadSettings();
    // await _initFirebase();
    // await _initFirebaseConfig();
    // await _initOneSignal();
    return "/dashboard";
  }

  static _loadSettings() {
    // AppTrackingTransparency.requestTrackingAuthorization();

    /**
     * EASY LOADING INSTANCE
     */
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.dark
      ..userInteractions = false
      ..dismissOnTap = false;

    /**
     * GetStorage
     */
    GetStorage.init(AppConfig.storageName);
  }

  static Future<String> _getDeviceId() async {
    var hasDeviceId = await _secureStorage.read(key: 'deviceId');

    if (null != hasDeviceId && hasDeviceId.isNotEmpty) {
      return hasDeviceId;
    } else {
      final rand = Random();
      final codeUnits = List.generate(30, (index) {
        return rand.nextInt(26) + 65;
      });
      String deviceId = Platform.isAndroid
          ? 'ANDROID-' + String.fromCharCodes(codeUnits)
          : 'IOS-' + String.fromCharCodes(codeUnits);

      await _secureStorage.write(key: 'deviceId', value: deviceId);

      return deviceId;
    }
  }

  // ignore: unused_element
  IOSOptions _getIOSOptions() {
    return const IOSOptions();
  }

  // ignore: unused_element
  AndroidOptions _getAndroidOptions() {
    return const AndroidOptions(
      encryptedSharedPreferences: true,
    );
  }

  /*static Future<void> _initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }*/

  static Future<void> _initFirebaseConfig() async {
    FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(seconds: 1),
    ));
    await remoteConfig.fetchAndActivate();
  }

  static _initOneSignal() {
    OneSignal.shared.setAppId(AppConfig.onesignalAppId);

    if (Platform.isIOS) {
      OneSignal.shared
          .promptUserForPushNotificationPermission(fallbackToSettings: true);
    }
  }
}
