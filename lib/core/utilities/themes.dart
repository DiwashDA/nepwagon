import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Themes {
  static const Color bgColor = Color(0xff212121);
  static const Color headline = Color(0xffE2E1E1);
  static const Color grey = Color(0xff808080);
  static const Color text1 = Color(0xff848484);
  static const Color text2 = Color(0xffffffff);
  static const Color gridText = Color(0xffE0E6E9);
  static const Color iconColor = Color(0xff7F8489);
  static Color darkShadow = const Color(0xff000000).withOpacity(0.2);
  static Color lightShadow = const Color(0xff353535).withOpacity(0.0);
  static const LinearGradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xff252525), Color(0xff212121)]);
  static LinearGradient tabGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Themes.bgColor.withOpacity(0.9),
        Themes.bgColor.withOpacity(0.3),
      ]);
  static const LinearGradient gradien = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xff252525), Color(0xff212121)]);
  static const LinearGradient invGradient = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0xff212121),
        Color(0xff252525),
      ]);
  static const LinearGradient gradient2 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xffE77A67), Color(0xffBF5A48)]);
  static const LinearGradient invGradient2 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xffBF5A48),
        Color(0xffE77A67),
      ]);

  static TextStyle heading1 = TextStyle(
      fontSize: 40.sp, fontWeight: FontWeight.w700, letterSpacing: -0.36);
  static TextStyle heading2 = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeight.w700,
    color: headline,
  );
  static TextStyle heading3 = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.w700, letterSpacing: -0.36);
  static TextStyle heading4 = const TextStyle(
      fontSize: 22, fontWeight: FontWeight.w700, letterSpacing: -0.36);
  static TextStyle heading5 = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.w700, letterSpacing: -0.36);
  static TextStyle heading6 = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: -0.36);
  static TextStyle bodyText1 = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: -0.36);
  static TextStyle bodyText2 = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: -0.36);

  static BoxDecoration iconHolderDecoration() {
    return BoxDecoration(
      gradient: Themes.gradient,
      // shape: BoxShape.circle,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
            color: Themes.lightShadow.withOpacity(0.9),
            offset: const Offset(0, -1)),
        BoxShadow(
            color: Themes.darkShadow,
            spreadRadius: 2.0,
            blurRadius: 0.5,
            offset: const Offset(0, 2)),
      ],
    );
  }

  static BoxDecoration elevatedContainerDecoration(gradient) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: gradient,
      boxShadow: [
        BoxShadow(
            color: Themes.lightShadow.withOpacity(0.9),
            offset: const Offset(0, -2)),
        BoxShadow(
            color: Themes.darkShadow,
            spreadRadius: 1.0,
            blurRadius: 0.5,
            offset: const Offset(0, 2)),
        BoxShadow(
            color: Themes.darkShadow,
            spreadRadius: 0.8,
            blurRadius: 0.4,
            offset: const Offset(3, 0)),
      ],
    );
  }

  static BoxDecoration containerDecoration(gradient) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: gradient,
      boxShadow: [
        BoxShadow(
            color: Themes.lightShadow.withOpacity(0.9),
            spreadRadius: -10,
            offset: const Offset(-1, 0)),
        BoxShadow(
            color: Themes.darkShadow,
            spreadRadius: -10.0,
            blurRadius: 5.5,
            offset: const Offset(0, 1)),
      ],
    );
  }

  static BoxDecoration inactiveButtonDecoration() {
    return BoxDecoration(
        gradient: Themes.gradient2, borderRadius: BorderRadius.circular(30));
  }

  static BoxDecoration activeButtonDecoration() {
    return BoxDecoration(
        gradient: Themes.invGradient2, borderRadius: BorderRadius.circular(30));
  }

  static BoxDecoration inactiveTab(gradient) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: const Color(0xff2C2C2C), width: 2),
      gradient: gradient,
      boxShadow: [
        BoxShadow(
            color: Themes.lightShadow.withOpacity(0.9),
            offset: const Offset(0, -2)),
        BoxShadow(
            color: Themes.darkShadow,
            spreadRadius: 1.0,
            blurRadius: 0.5,
            offset: const Offset(0, 2)),
      ],
    );
  }

  static BoxDecoration activeTab(gradient) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.grey.withOpacity(0.3), width: 2),
      gradient: gradient,
      boxShadow: [
        BoxShadow(
            color: Themes.lightShadow.withOpacity(0.9),
            offset: const Offset(0, -2)),
        BoxShadow(
            color: Themes.darkShadow,
            spreadRadius: 1.0,
            blurRadius: 0.5,
            offset: const Offset(0, 3)),
      ],
    );
  }
}
