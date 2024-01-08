import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextTheme{
  static TextTheme myLightTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
      color: Colors.black87,
    ),
    bodyLarge: GoogleFonts.roboto(
      color: Colors.black54,
    ), 
  );
  static TextTheme myDarkTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
      color: Colors.white70,
    ),
    bodyLarge: GoogleFonts.roboto(
      color: Colors.white60,
    ), 
  );
}