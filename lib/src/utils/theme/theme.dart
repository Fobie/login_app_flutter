import 'package:flutter/material.dart';
import 'package:login_app/src/utils/theme/widget_themes/button_theme.dart';
import 'package:login_app/src/utils/theme/widget_themes/text_theme.dart';
import 'package:login_app/src/utils/theme/widget_themes/textformfield_theme.dart';

class TAppTheme{

  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme
  );
}