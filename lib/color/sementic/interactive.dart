import 'dart:ui';

import 'package:chatping/color/pallete/neutral.dart';
import 'package:chatping/color/pallete/shadow_pallete.dart';
import 'package:chatping/color/sementic/sementicable.dart';

import '../pallete/palletable.dart';

enum Interactive implements Sementicable {
  bottomNavigation(Neutral.n40, Neutral.n40);

  const Interactive(this.lightColor, this.darkColor);

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
