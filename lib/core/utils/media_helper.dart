import 'package:flutter/material.dart';

class MediaHelper {
  static String mediaPath = "lib/assets";
  static String imagePath = "lib/assets";

  /// Get Image
  static Image getImage(String path) {
    return Image.asset(mediaPath + '/' + path);
  }

  static String getImagePath(String path) {
    return mediaPath + '/' + 'images' + '/' + path;
  }
}
