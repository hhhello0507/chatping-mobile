import 'dart:ui';

import 'package:chatping/color/sementic/sementicable.dart';

import '../pallete/palletable.dart';
import '../pallete/neutral.dart';

enum Static implements Sementicable {
  white(Neutral.n00, Neutral.n00),
  black(Neutral.n100, Neutral.n100);

  const Static(this.lightColor, this.darkColor);

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
