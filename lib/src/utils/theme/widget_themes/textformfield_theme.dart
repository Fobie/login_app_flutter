import 'package:flutter/material.dart';
import 'package:login_app/src/constants/color.dart';

class TTextFormFieldTheme{
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: kSecondaryColor,
    floatingLabelStyle: TextStyle(color: kSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kSecondaryColor)
    )
  );

  static InputDecorationTheme darkInputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: kPrimaryColor,
    floatingLabelStyle: TextStyle(color: kPrimaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kPrimaryColor)
    )
  );
}