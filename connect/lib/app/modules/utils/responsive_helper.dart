import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class ResponsiveValueSet {
  static double aspectRadio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 640;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 641 &&
        MediaQuery.of(context).size.width <= 1007;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1008 &&
        MediaQuery.of(context).size.width <= 1600;
  }

  static bool isVisibleAppBarLeading(BuildContext context) {
    return (isSmallScreen(context)) ? false : true;
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
            : isSmallScreen(context)
                ? TextAlign.start
                : TextAlign.center;
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
        ? 9.sp
        : isSmallScreen(context)
            ? 8.sp
            : isMediumScreen(context)
                ? 6.7.sp
                : 4.sp;
  }

  static double headingFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 18.sp
        : isSmallScreen(context)
            ? 15.sp
            : isMediumScreen(context)
                ? 14.sp
                : isLargeScreen(context)
                    ? 7.5.sp
                    : 7.sp;
  }

  static double appBarSubTitleFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 7.5.sp
        : isSmallScreen(context)
            ? 6.sp
            : isMediumScreen(context)
                ? 5.sp
                : 2.5.sp;
  }

  static double addButtonPadding(BuildContext context) {
    return (100.w <= 400)
        ? 4.w
        : isSmallScreen(context)
            ? 3.w
            : isMediumScreen(context)
                ? 2.5.w
                : 1.5.w;
  }

  static double addButtonFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 9.sp
        : isSmallScreen(context)
            ? 6.sp
            : isMediumScreen(context)
                ? 6.sp
                : isLargeScreen(context)
                    ? 3.5.sp
                    : 3.sp;
  }

  static double bgImageSize(BuildContext context) {
    return (100.w <= 400)
        ? 45.w
        : isSmallScreen(context)
            ? 45.w
            : isMediumScreen(context)
                ? 45.h
                : isLargeScreen(context)
                    ? 38.w
                    : 35.w;
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
        ? 8.sp
        : isSmallScreen(context)
            ? 7.sp
            : isMediumScreen(context)
                ? 4.5.sp
                : isLargeScreen(context)
                    ? 4.sp
                    : 3.5.sp;
  }

  static double footerCountFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 10.sp
        : isSmallScreen(context)
            ? 10.sp
            : isMediumScreen(context)
                ? 8.sp
                : 4.sp;
  }

  static double webTitleFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 6.sp
        : isSmallScreen(context)
            ? 9.sp
            : isMediumScreen(context)
                ? 6.sp
                : 4.sp;
  }

  static double cardClipperHeight(BuildContext context) {
    return (100.w <= 400)
        ? 1.8.h
        : isSmallScreen(context)
            ? 2.5.h
            : isMediumScreen(context)
                ? 2.4.h
                : isLargeScreen(context)
                    ? 2.6.h
                    : 3.h;
  }

  static double cardClipperWidth(BuildContext context) {
    return (100.w <= 400)
        ? 6.h
        : isSmallScreen(context)
            ? 7.h
            : isMediumScreen(context)
                ? 8.h
                : isLargeScreen(context)
                    ? 7.h
                    : 9.h;
  }

  static double arrowSize(BuildContext context) {
    return (100.w <= 400)
        ? 5.w
        : isSmallScreen(context)
            ? 5.w
            : isMediumScreen(context)
                ? 5.5.w
                : 7.w;
  }

  static double birthdayCardWidth(BuildContext context) {
    return (100.w <= 400)
        ? 40.w
        : isSmallScreen(context)
            ? 42.w
            : isMediumScreen(context)
                ? 28.w
                : isLargeScreen(context)
                    ? 18.w
                    : 18.w;
  }

  static double birthdayimageHeight(BuildContext context) {
    return (100.w <= 400)
        ? 20.h
        : isSmallScreen(context)
            ? 35.w
            : isMediumScreen(context)
                ? 17.w
                : isLargeScreen(context)
                    ? 13.w
                    : 11.w;
  }

  static double birthdayHeaderFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 10.sp
        : isSmallScreen(context)
            ? 10.sp
            : isMediumScreen(context)
                ? 5.sp
                : isLargeScreen(context)
                    ? 3.5.sp
                    : 3.5.sp;
  }

  static double birthdayBodyFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 8.sp
        : isSmallScreen(context)
            ? 9.sp
            : isMediumScreen(context)
                ? 4.5.sp
                : isLargeScreen(context)
                    ? 2.8.sp
                    : 3.sp;
  }

  static double birthdayTypeFontSize(BuildContext context) {
    return (100.w <= 400)
        ? 9.sp
        : isSmallScreen(context)
            ? 10.sp
            : isMediumScreen(context)
                ? 5.sp
                : isLargeScreen(context)
                    ? 3.5.sp
                    : 3.sp;
  }

  static double birthdayCardSpaceBetween(BuildContext context) {
    return (100.w <= 400)
        ? 20.w
        : isSmallScreen(context)
            ? 16.w
            : isMediumScreen(context)
                ? 12.w
                : isLargeScreen(context)
                    ? 9.w
                    : 7.w;
  }

  static double birthdayCardPaddingSides(BuildContext context) {
    return (100.w <= 400)
        ? 7.w
        : isSmallScreen(context)
            ? 10.w
            : isMediumScreen(context)
                ? 7.w
                : 2.7.w;
  }
}
