import 'dart:ui';

import 'package:chatping/color/pallete/palletable.dart';

abstract class Sementicable {
  Palletable get lightColor;
  Palletable get darkColor;

  Color getLightColor();
  Color getDarkColor();
}