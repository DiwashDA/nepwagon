import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_colors.dart';
import 'app_text_theme.dart';

final appThemeProvider = Provider<AppTheme>((ref) {
  return AppTheme.light();
  // }
});

class AppTheme {
  final ThemeData data;
  final AppTextTheme textTheme;
  final AppColor appColors;

  AppTheme(
      {required this.data, required this.textTheme, required this.appColors});

  factory AppTheme.light() {
    // const mode = ThemeMode.light;
    final appColors = AppColor.light();
    final themeData = ThemeData.light().copyWith(
        scaffoldBackgroundColor: appColors.backgroundColor,
        textTheme: ThemeData.light().textTheme);

    return AppTheme(
      data: themeData,
      textTheme: AppTextTheme(),
      appColors: appColors,
    );
  }
}
