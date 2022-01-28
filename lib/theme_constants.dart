import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Add Colors, TextStyles that should be reused across the app to this.
// Makes it easy to use the same style across multiple screens.

// examples:

const kPrimaryBackgroundColor = Color(0xFF00C569);

final kButtonTextStyle = TextStyle(
  // GoogleFonts gives you access to a ton of font families.
  fontFamily: GoogleFonts.roboto().fontFamily,
  fontSize: 18.0,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);
