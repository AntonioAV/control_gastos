import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData miTheme() {
    return ThemeData(
      useMaterial3: true,
      textTheme: GoogleFonts.robotoTextTheme(),
    );
  }
}
