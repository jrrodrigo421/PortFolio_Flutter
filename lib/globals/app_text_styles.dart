import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApptextStyles {
  static TextStyle headerTextStyle() {
    return GoogleFonts.rubik(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle headerTextStyle2() {
    return GoogleFonts.rubikVinyl(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    );
  }

  static TextStyle montseratStyle() {
    return GoogleFonts.montserrat(
      color: Colors.white,
      fontWeight: FontWeight.w800,
      fontSize: 24,
    );
  }

  static TextStyle headingStyles() {
    return GoogleFonts.rubikMoonrocks(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 2,
    );
  }
}
