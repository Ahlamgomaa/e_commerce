import 'package:flutter/material.dart';

import 'colorapp.dart';

ThemeData themeDataEnglish = ThemeData  (

    fontFamily: 'playfair',
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'cairo',
        fontSize: 22,
        color: Colorapp.black,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'cairo',
        fontSize: 30,
        color: Colorapp.black,
      ),
      bodySmall:TextStyle(
        height: 1.5,
        color: Colorapp.grey,
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
      color: Colorapp.black,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'cairo',
      fontSize: 30,
      color: Colorapp.black,
    ),
    bodySmall:TextStyle(
      height: 1.5,
      color: Colorapp.grey,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    ),
  ),

);