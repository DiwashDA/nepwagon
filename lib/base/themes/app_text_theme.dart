import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextTheme {
  final TextStyle categoryTextStyle;
  final TextStyle subCategoryTextStyle;
  final TextStyle menuLabelTextStyle;

  const AppTextTheme._({
    required this.categoryTextStyle,
    required this.subCategoryTextStyle,
    required this.menuLabelTextStyle,
  });

  factory AppTextTheme() {
    return AppTextTheme._(
      categoryTextStyle: TextStyle(
        fontSize: 45.sp,
        fontWeight: FontWeight.w700,
        fontFamily: "Helvetica",
      ),
      subCategoryTextStyle: TextStyle(
        fontSize: 40.sp,
        fontWeight: FontWeight.w700,
        fontFamily: "Helvetica",
      ),
      menuLabelTextStyle: TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w400,
        fontFamily: "Helvetica",
      ),
    );
  }
}

extension TextStyleExt on TextStyle {
  TextStyle bold() => copyWith(fontWeight: FontWeight.w700);

  TextStyle comfort() => copyWith(height: 1.8.h);

  TextStyle dense() => copyWith(height: 1.2.h);
}
