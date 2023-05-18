import 'package:flutter/material.dart';

final appTheme = ThemeData(
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(EdgeInsets.zero),
      overlayColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return Colors.black12;
        }
        return Colors.transparent;
      }),
    ),
  ),
  fontFamily: 'Montserrat SemiBold',
  scaffoldBackgroundColor: Colors.black,
  primaryColor: const Color(0xFFFFFFFF),
  primaryColorLight: const Color(0xFFFFFFFF),
  secondaryHeaderColor: const Color(0xFFFFFFFF),
  dividerColor: const Color(0xFFFFFFFF),
);
