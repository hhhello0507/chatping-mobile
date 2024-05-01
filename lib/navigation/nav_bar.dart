import 'dart:io';

import 'package:chatping/color/build_context+.dart';
import 'package:chatping/color/gradient/primary.dart';
import 'package:chatping/color/sementic/background.dart';
import 'package:chatping/color/sementic/label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../color/sementic/shadow.dart';
import '../util/primary_gradient_mask.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color(Background.normal),
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        boxShadow: [
          BoxShadow(
            color: color(CPShadow.bottomNavigation),
            blurRadius: 12,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          color: color(Background.normal),
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 18),
              navItem(
                'assets/icons/home_fill.svg',
                pageIndex == 0,
                onTap: () => onTap(0),
              ),
              const SizedBox(width: 18),
              navItem(
                'assets/icons/ping_fill.svg',
                pageIndex == 1,
                onTap: () => onTap(1),
              ),
              const SizedBox(width: 18),
              navItem(
                'assets/icons/person_fill.svg',
                pageIndex == 2,
                onTap: () => onTap(2),
              ),
              const SizedBox(width: 18),
            ],
          ),
        ),
      ),
    );
  }

  Widget navItem(String icon, bool selected, {Function()? onTap}) {
    var iconButton = IconButton(
      onPressed: onTap,
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(selected ? Colors.white : color(Label.assistive), BlendMode.srcIn),
        width: 32,
        height: 32,
      ),
    );
    return SizedBox(
      height: 48,
      width: 48,
      child: selected ? PrimaryGradientMask(
        child: iconButton,
      ) : iconButton,
    );
  }
}
