import 'dart:ui';

abstract class Palletable {
  Color get color;
  Color getColor();
}

extension PalleteOpacityExtension on Palletable {
  Palletable withAlpha(int alpha) {
    color.withAlpha(alpha);
    return this;
  }
}