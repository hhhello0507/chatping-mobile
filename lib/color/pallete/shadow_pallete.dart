import 'dart:ui';

import 'palletable.dart';

enum ShadowPallete implements Palletable {
  bottomNavigationL(Color.fromRGBO(0, 0, 0, 0.06)),
  bottomNavigationD(Color.fromRGBO(133, 133, 133, 0.06)),

  fillNormalL(Color.fromRGBO(112, 155, 124, 0.08)),
  fillNormalD(Color.fromRGBO(112, 155, 124, 0.22)),
  fillStrongL(Color.fromRGBO(112, 155, 124, 0.15)),
  fillStrongD(Color.fromRGBO(112, 155, 124, 0.28));

  const ShadowPallete(this.color);

  @override
  final Color color;

  @override
  Color getColor() {
    return color;
  }
}
