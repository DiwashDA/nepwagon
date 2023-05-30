import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import '../core.dart';

class Utilities {
  static Color black = Color(0xff212121);
  static Color grey = Color(0xfff8f8f8);
  static Color botNavBar = Color(0xfff0f0f0);
  static Color toast = Color(0xff6FB3F5);
  static Color button = Color(0xff0d5ba7);
  static Color blue = Color(0xff4A9ECE);
  static Color borderColor = Color(0xffC4C4C4);
  static const Color dialogIconColor = Color(0xff212121);
  static Color bgColor = Colors.grey.withOpacity(0.2);
  static Color neonBorder = Color(0xff00FF47);

  static const Color dialogBgColor = Color(0xffE7F0FA);
  static TextStyle headingLine = TextStyle(
      fontSize: 80.sp, color: Colors.white, fontWeight: FontWeight.w800);

  static TextStyle menuHeadline = TextStyle(
    fontSize: 50.sp,
    color: black,
    fontWeight: FontWeight.w700,
    fontFamily: 'TNR',
  );
  static TextStyle categoryTitle = TextStyle(
    fontSize: 30.sp,
    color: black,
    fontWeight: FontWeight.w700,
    fontFamily: 'TNR',
  );

  static TextStyle tableHeader = TextStyle(
      color: Color(0xff000000),
      fontSize: 40.sp,
      fontWeight: FontWeight.w600,
      fontFamily: "Lato");
  static TextStyle categorySubTitle = TextStyle(
    fontSize: 50.sp,
    color: black,
    fontWeight: FontWeight.w600,
  );
  static TextStyle menuItemLabel = TextStyle(
    fontSize: 40.sp,
    color: black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle categoryTitleLabel(selected) => TextStyle(
        fontSize: 35.sp,
        color: selected ? Colors.white : black,
        fontWeight: FontWeight.w600,
      );

  static TextStyle appBarHeading = TextStyle(
      fontSize: 50.sp,
      color: black,
      fontWeight: FontWeight.w700,
      fontFamily: 'TNR');

  static TextStyle settingsHeading = TextStyle(
      fontSize: 80.sp,
      color: black,
      fontWeight: FontWeight.w700,
      fontFamily: 'TNR');

  static TextStyle confirmButton = TextStyle(
      fontSize: 40.sp,
      color: black,
      fontWeight: FontWeight.w700,
      fontFamily: 'TNR');

  static TextStyle offersStyle = TextStyle(
      fontSize: 40.sp, color: Colors.white, fontWeight: FontWeight.w400);
  static topDesign() {
    return Image.asset(
      PngImages.topDesign,
      fit: BoxFit.fill,
      height: 272.h,
      width: 1080.w,
    );
  }

  static TextStyle settingsTitle = TextStyle(
      fontSize: 40.sp,
      color: black,
      height: 50.sp,
      fontWeight: FontWeight.w700,
      fontFamily: "TNR");

  static TextStyle settingsValue = TextStyle(
      fontSize: 40.sp,
      color: black,
      fontWeight: FontWeight.w500,
      fontFamily: "TNR");

  static TextStyle wifiName = TextStyle(
      fontSize: 50.sp,
      color: black,
      fontWeight: FontWeight.w400,
      fontFamily: "Lato");

  static TextStyle wifiNameAdmin = TextStyle(
      fontSize: 40.sp,
      color: black,
      fontWeight: FontWeight.w600,
      fontFamily: "Lato");

  static TextStyle tableName = TextStyle(
      fontSize: 50.sp,
      color: black,
      fontWeight: FontWeight.w700,
      fontFamily: 'TNR');
  static TextStyle tables = TextStyle(
      fontSize: 38.sp,
      color: black,
      fontWeight: FontWeight.w600,
      fontFamily: 'Lato');

  static TextStyle heading1 =
      TextStyle(fontSize: 50.sp, color: black, fontWeight: FontWeight.w700);

  static TextStyle heading2 = TextStyle(
      fontSize: 40.sp,
      color: black,
      fontWeight: FontWeight.w700,
      fontFamily: "Lato");
  static TextStyle dialogTitle = TextStyle(
      fontSize: 50.sp,
      color: black,
      fontWeight: FontWeight.w400,
      fontFamily: "TNR");
  static TextStyle itemLabel = TextStyle(
      fontSize: 30.sp,
      color: black,
      fontWeight: FontWeight.w400,
      fontFamily: "Lato");
  static TextStyle itemName = TextStyle(
      fontSize: 80.sp,
      color: black,
      fontWeight: FontWeight.w400,
      fontFamily: "TNR");
  static TextStyle itemDetail = TextStyle(
      fontSize: 50.sp,
      color: black,
      fontWeight: FontWeight.w400,
      fontFamily: "Lato");
  static TextStyle radio =
      TextStyle(fontSize: 50.sp, color: black, fontWeight: FontWeight.w700);
  static TextStyle rate =
      TextStyle(fontSize: 50.sp, color: black, fontWeight: FontWeight.w700);
  static TextStyle buttonLabel = TextStyle(
      fontSize: 40.sp,
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontFamily: "TNR");
  static TextStyle appbarHeader = TextStyle(
      fontSize: 60.sp, color: Colors.black, fontWeight: FontWeight.w600);

  static Gradient gradientBackground = LinearGradient(
    colors: [
      Color(0xff6B86F3),
      Color(0xff08B4E6),
      Color(0xff736CF8),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  static Gradient buttonGradient = LinearGradient(
    colors: [
      Color(0xff6B86F3),
      Color(0xff08B4E6),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static AppBar appBar(String title, void Function() back) => AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: back,
          child: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
            size: 80.sp,
          ),
        ),
        centerTitle: true,
        title: Text(title, style: Utilities.appbarHeader),
      );

  static BoxDecoration wifiTileDecoration() {
    return BoxDecoration(
        color: grey,
        border: Border.all(color: Color(0xff808080)),
        borderRadius: BorderRadius.circular(20.sp));
  }

  static BoxDecoration cartItemTileDecoration() {
    return BoxDecoration(
        color: grey,
        borderRadius: BorderRadius.circular(20.sp),
        border: Border.all(color: Color(0xffDDDDDD)));
  }

  static BoxDecoration elevatedContainerDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20.sp),
      color: Colors.white.withOpacity(0.1),
      boxShadow: [
        BoxShadow(
            color: const Color(0xff808080).withOpacity(0.3),
            spreadRadius: 1.0,
            blurRadius: 2.sp,
            offset: Offset(2.w, 2.h)),
        BoxShadow(
            color: const Color(0xff353535),
            spreadRadius: 1.0,
            blurRadius: 2.sp,
            offset: Offset(2.w, 2.h)),
      ],
    );
  }

  static BoxDecoration botNavBarDecoration() {
    return BoxDecoration(
        color: Utilities.botNavBar,
        border: Border.all(color: Color(0xff8A8A8C), width: 1.sp),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.sp), topRight: Radius.circular(40.sp)));
  }

  static BoxDecoration itemTileDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20.sp),
      border: Border.all(color: borderColor, width: 1.sp),
      color: grey,
    );
  }

  static BoxDecoration categoryTileDecoration(selected) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20.sp),
      border: Border.all(
          color: selected ? neonBorder : Color(0xffdddddd), width: 1.sp),
      color: selected ? Colors.black : grey,
    );
  }

  static BoxDecoration bottomNavItemDecoration(selected) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(40.sp),
      border: Border.all(
          color: selected ? neonBorder : Color(0xff8A8A8C), width: 1.sp),
      color: selected ? Colors.black : grey,
    );
  }

  static BoxDecoration adminBottomNavItemDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(40.sp),
      border: Border.all(color: Colors.black, width: 1.sp),
      color: grey,
    );
  }

  static String capitalize(String data) {
    return "${data[0].toUpperCase()}${data.substring(1).toLowerCase()}";
  }

  static Widget getBatteryIndicator(percentage, {Color color = Colors.black}) {
    String level = "";

    if (percentage == "N/A") {
      level = "2";
    } else if (double.parse(percentage) <= 10) {
      level = "1";
    } else if (double.parse(percentage) > 10 &&
        double.parse(percentage) <= 35) {
      level = "2";
    } else if (double.parse(percentage) > 35 &&
        double.parse(percentage) <= 60) {
      level = "3";
    } else if (double.parse(percentage) > 60 &&
        double.parse(percentage) <= 85) {
      level = "4";
    } else if (double.parse(percentage) > 85) {
      level = "full";
    }

    switch (level) {
      case "1":
        {
          return RotatedBox(
            quarterTurns: 2,
            child: Image.asset(
              PngImages.batt1,
            ),
          );
        }

      case "2":
        {
          return Image.asset(
            PngImages.batt2,
            color: color,
          );
        }
      case "3":
        {
          return Image.asset(
            PngImages.batt3,
            color: color,
          );
        }

      case "4":
        {
          return Image.asset(
            PngImages.batt4,
            color: color,
          );
        }

      case "full":
        {
          return Image.asset(
            PngImages.battFull,
          );
        }

      default:
        return Container();
    }
  }
}
