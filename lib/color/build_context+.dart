import 'package:chatping/color/sementic/label.dart';
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Color color(Label sementic) {
    if (Theme.of(this).brightness == Brightness.light) {
      return sementic.lightColor.getColor();
    } else {
      return sementic.darkColor.getColor();
    }
  }
}