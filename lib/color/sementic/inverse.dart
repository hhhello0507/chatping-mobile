import 'dart:ui';

import 'package:chatping/color/sementic/sementicable.dart';

import '../pallete/palletable.dart';
import '../pallete/neutral.dart';

enum Inverse implements Sementicable {
  normal(Neutral.n90, Neutral.n00);

  const Inverse(this.lightColor, this.darkColor);

  @override
  final Palletable lightColor;

  @override
  final Palletable darkColor;

  @override
  Color getLightColor() {
    return lightColor.getColor();
  }

  @override
  Color getDarkColor() {
    return darkColor.getColor();
  }
}
