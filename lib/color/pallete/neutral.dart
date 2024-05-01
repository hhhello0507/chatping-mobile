import 'dart:ui';

import 'palletable.dart';

enum Neutral implements Palletable {
  n00(Color(0xFFFFFFFF)),
  n10(Color(0xFFF0F0F5)),
  n20(Color(0xFFF0F0F5)),
  n30(Color(0xFFE6E6E6)),
  n40(Color(0xFFD1D1D1)),
  n50(Color(0xFFAAAAAA)),
  n60(Color(0xFF787878)),
  n70(Color(0xFF303030)),
  n80(Color(0xFF1D1D1D)),
  n90(Color(0xFF101010)),
  n100(Color(0xFF000000));

  const Neutral(this.color);

  @override
  final Color color;

  @override
  Color getColor() {
    return color;
  }
}
