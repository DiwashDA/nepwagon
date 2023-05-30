import 'package:flutter/material.dart';

class AppColor {
  final Color backgroundColor;
  final Color menuTileColor;
  final Color cartTileColor;
  final Color orderTileColor;

  const AppColor({
    required this.backgroundColor,
    required this.menuTileColor,
    required this.cartTileColor,
    required this.orderTileColor,
  });

  factory AppColor.light() {
    return AppColor(
      backgroundColor: const Color(0xffF8F8F8),
      menuTileColor: const Color(0xffFEFEFE),
      cartTileColor: const Color(0xffA2ABE0).withOpacity(0.2),
      orderTileColor: const Color(0xff03680D).withOpacity(0.2),
    );
  }
}
