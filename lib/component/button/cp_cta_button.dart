import 'package:flutter/material.dart';

import '../../color/build_context+.dart';
import '../../color/gradient/primary.dart';
import '../theme/textstyle.dart';

class CPCTAButton extends StatelessWidget {
  final String data;
  final VoidCallback? onPressed;

  const CPCTAButton(this.data, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          gradient: context.gradient(Primary.p50)),
      child: FilledButton(
          style: FilledButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent),
          onPressed: onPressed,
          child: Text(
            data,
            style: CPTextStyle.bold1,
          )),
    );
  }
}
