import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class ResponsiveValueSet {
  static double aspectRadio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isVisibleAppBarLeading(BuildContext context) {
    return (isSmallScreen(context)) ? false : true;
  }

  static double imageHeight(BuildContext context) {
    return 20.h <= 200
        ? 160
        : isSmallScreen(context)
            ? 16.h
            : isMediumScreen(context)
                ? 17.h
                : isLargeScreen(context)
                    ? 16.h
                    : 16.h;
  }

  static double appBarDividerHeight(BuildContext context) {
    return 20.h <= 200
        ? 6.h
        : isSmallScreen(context)
            ? 57.h
            : isMediumScreen(context)
                ? 75.h
                : isLargeScreen(context)
                    ? 79.h
                    : 79.h;
  }

  static double appBarTitleFontSize(BuildContext context) {
    return isSmallScreen(context)
        ? 7.sp
        : isMediumScreen(context)
            ? 5.sp
            : 4.sp;
  }

  static double appBarSubTitleFontSize(BuildContext context) {
    return isSmallScreen(context)
        ? 6.sp
        : isMediumScreen(context)
            ? 4.sp
            : 2.5.sp;
  }
}
