import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      headlineMedium: GoogleFonts.montserrat(color: Colors.black, fontSize: 30),
      titleMedium: GoogleFonts.poppins(
        color: Colors.black54,
      ),
      headlineSmall: GoogleFonts.montserrat(color: Colors.black, fontSize: 16));

  static TextTheme darkTextTheme = TextTheme(
      headlineMedium: GoogleFonts.montserrat(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      titleMedium: GoogleFonts.poppins(color: Colors.white),
      headlineSmall: GoogleFonts.montserrat(color: Colors.white, fontSize: 16));
}
