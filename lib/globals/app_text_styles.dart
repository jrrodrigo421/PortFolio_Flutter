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

  static TextStyle monteseratStyle() {
    return GoogleFonts.montserrat(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    );
  }
}
