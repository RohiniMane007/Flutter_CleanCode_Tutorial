// import 'package:counter/config/theme/custome_themes/text_theme.dart';
import 'package:flutter/material.dart';

import 'custome_themes/elevated_button_theme.dart';

class AppTheme{
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: const Color.fromARGB(255, 238, 233, 233),
    // textTheme: AppTextTheme.lightTextTheme
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.grey,
    // textTheme: AppTextTheme.darkTextTheme
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme
  );
}