import 'dart:ui';

import 'package:chatping/color/pallete/shadow_pallete.dart';
import 'package:chatping/color/sementic/sementicable.dart';

import '../pallete/palletable.dart';

enum CPShadow implements Sementicable {
  bottomNavigation(ShadowPallete.bottomNavigationL, ShadowPallete.bottomNavigationD);

  const CPShadow(this.lightColor, this.darkColor);

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
