import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
    titleLarge: const TextStyle().copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black), // App bar title
    titleMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
    bodyLarge: const TextStyle(
        fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
    bodyMedium: const TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
    labelLarge: const TextStyle(
        fontSize: 28, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: const TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
    titleLarge: const TextStyle().copyWith(
        fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
    bodyLarge: const TextStyle(
        fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
    bodyMedium: const TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
    labelLarge: const TextStyle(
        fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: const TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
  );
}
