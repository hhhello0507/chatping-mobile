import 'dart:ui';

import 'package:chatping/color/sementic/sementicable.dart';

import '../pallete/palletable.dart';
import '../pallete/neutral.dart';

enum Background implements Sementicable {
  normal(Neutral.n00, Neutral.n80);

  const Background(this.lightColor, this.darkColor);

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
