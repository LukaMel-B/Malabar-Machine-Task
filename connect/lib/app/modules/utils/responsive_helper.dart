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
        MediaQuery.of(context).size.width <= 14000;
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
    return (100.w <= 400)
        ? 6.h
        : isSmallScreen(context)
            ? 6.h
            : isMediumScreen(context)
                ? 7.h
                : 8.h;
  }

  static double spaceAfterAppBar(BuildContext context) {
    return (100.w <= 400)
        ? 2.h
        : isSmallScreen(context)
            ? 3.h
            : isMediumScreen(context)
                ? 3.h
                : 4.h;
  }

  static TextAlign appBarTitleAlign(BuildContext context) {
    return isLargeScreen(context)
        ? TextAlign.center
        : isMediumScreen(context)
            ? TextAlign.center
            : TextAlign.start;
  }

  static double appBarTitleWidth(BuildContext context) {
    return (100.w <= 400)
        ? 10.w
        : isSmallScreen(context)
            ? 43.w
            : isMediumScreen(context)
                ? 1.w
                : 27.w;
  }

  static double appBarTitleFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 3.sp
        : isSmallScreen(context)
            ? 8.sp
            : isMediumScreen(context)
                ? 5.sp
                : 4.sp;
  }

  static double headingFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 13.sp
        : isSmallScreen(context)
            ? 15.sp
            : isMediumScreen(context)
                ? 8.5.sp
                : 7.5.sp;
  }

  static double appBarSubTitleFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 3.w
        : isSmallScreen(context)
            ? 6.sp
            : isMediumScreen(context)
                ? 4.sp
                : 2.5.sp;
  }

  static double addButtonPadding(BuildContext context) {
    return (100.w <= 400)
        ? 4.w
        : isSmallScreen(context)
            ? 3.w
            : isMediumScreen(context)
                ? 1.5.w
                : 1.5.w;
  }

  static double bgImageSize(BuildContext context) {
    return (100.w <= 400)
        ? 40.w
        : isSmallScreen(context)
            ? 35.w
            : isMediumScreen(context)
                ? 45.w
                : 46.w;
  }

  static String bgImage(BuildContext context) {
    return isSmallScreen(context)
        ? 'assets/images/bg-small.png'
        : isMediumScreen(context)
            ? 'assets/images/bg-large.png'
            : 'assets/images/bg-large.png';
  }

  static double footerFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 4.sp
        : isSmallScreen(context)
            ? 6.sp
            : isMediumScreen(context)
                ? 4.5.sp
                : 4.sp;
  }

  static double webTitleFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 3.sp
        : isSmallScreen(context)
            ? 9.sp
            : isMediumScreen(context)
                ? 6.sp
                : 4.sp;
  }
}
