import 'dart:ui';

import 'package:chatping/color/sementic/sementicable.dart';

import '../pallete/palletable.dart';
import '../pallete/neutral.dart';

enum Shadow implements Sementicable {
  normal(Neutral.n100, Neutral.n80);


  const Shadow(this.lightColor, this.darkColor);

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
