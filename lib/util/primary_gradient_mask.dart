import 'package:chatping/color/build_context+.dart';
import 'package:flutter/material.dart';

import '../color/gradient/primary.dart';

class PrimaryGradientMask extends StatelessWidget {
  const PrimaryGradientMask({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => context.gradient(Primary.p50)
          .createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: child,
    );
  }
}
