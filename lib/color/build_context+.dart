import 'package:chatping/color/sementic/sementicable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'gradient/gradientable.dart';

extension BuildContextExtension on BuildContext {
  Color color(Sementicable sementic) {
    var brightness = MediaQuery.of(this).platformBrightness;
    if (brightness == Brightness.light) {
      return sementic.lightColor.getColor();
    } else {
      return sementic.darkColor.getColor();
    }
  }

  Gradient gradient(Gradientable gradient) {
    return gradient.getGradient();
  }
}
