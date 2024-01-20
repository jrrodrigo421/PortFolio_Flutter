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

  static TextStyle montseratStyle({required Color color}) {
    return GoogleFonts.montserrat(
      color: color,
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

  static TextStyle normalStyle() {
    return GoogleFonts.signikaNegative(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      color: const Color.fromARGB(255, 150, 154, 171),
      letterSpacing: 1,
    );
  }
}
