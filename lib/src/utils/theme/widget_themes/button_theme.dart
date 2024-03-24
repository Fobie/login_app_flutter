import 'package:flutter/material.dart';

class TButtonTheme {
  TButtonTheme._();

  // Outlined Button
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: Colors.black,
        side: BorderSide(color: Colors.black),
        padding: const EdgeInsets.symmetric(vertical: 15)),
  );
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: Colors.white,
        side: BorderSide(color: Colors.white),
        padding: const EdgeInsets.symmetric(vertical: 15)),
  );

//   Elevated Button
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        side: BorderSide(color: Colors.white),
        padding: const EdgeInsets.symmetric(vertical: 15)
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.white),
        padding: const EdgeInsets.symmetric(vertical: 15)
    ),
  );
}
