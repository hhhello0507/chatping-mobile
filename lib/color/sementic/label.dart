import 'dart:ui';

import 'package:chatping/color/sementic/sementicable.dart';

import '../pallete/palletable.dart';
import '../pallete/neutral.dart';

enum Label implements Sementicable {
  normal(Neutral.n90, Neutral.n20),
  alternative(Neutral.n60, Neutral.n30),
  assistive(Neutral.n40, Neutral.n60),
  disable(Neutral.n20, Neutral.n70);

  const Label(this.lightColor, this.darkColor);

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
