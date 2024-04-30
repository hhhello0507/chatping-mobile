import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(18)),
        boxShadow: [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 12,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          color: Colors.white,
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
    var color = selected ? Colors.blue : Colors.grey.shade500;
    return SizedBox(
      height: 48,
      width: 48,
      child: IconButton(
        onPressed: onTap,
        icon: SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          width: 32,
          height: 32,
        ),
      ),
    );
  }
}
