import 'package:flutter/material.dart';

import 'colorapp.dart';

ThemeData themeDataEnglish = ThemeData  (

    fontFamily: 'playfair',
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'cairo',
        fontSize: 22,
        color: ColorApp.black,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'cairo',
        fontSize: 30,
        color: ColorApp.black,
      ),
      bodySmall:TextStyle(
        height: 1.5,
        color: ColorApp.grey,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
    ),

);


ThemeData themeDataArabic= ThemeData  (

  fontFamily: 'cairo',
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'cairo',
      fontSize: 22,
      color: ColorApp.black,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'cairo',
      fontSize: 30,
      color: ColorApp.black,
    ),
    bodySmall:TextStyle(
      height: 1.5,
      color: ColorApp.grey,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    ),
  ),

);