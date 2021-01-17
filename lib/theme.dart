import 'package:flutter/material.dart';

const primaryColor = Color(0xFF1A4E64);
const accentColor = Color(0xFFFABB06);

final theme = ThemeData(
  primaryColor: primaryColor,
  accentColor: accentColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  fontFamily: 'Montserrat',
  appBarTheme: AppBarTheme(
    // backgroundColor: Colors.transparent,
    color: Colors.transparent,
    actionsIconTheme: IconThemeData(color: primaryColor),
    textTheme: TextTheme(
      button: TextStyle(color: primaryColor),
    ),
    elevation: 0,
  ),
);
