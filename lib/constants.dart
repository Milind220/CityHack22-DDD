import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Add Colors, TextStyles that should be reused across the app to this.
// Makes it easy to use the same style across multiple screens.

// examples:

const kMiddleBlueColour = Color(0xFF8CD1E1);
const kMiddleBlueGreenColour = Color(0xFFB5E7DC);
const kMaxBlueGreenColour = Color(0xFF57C3BD);
const kGlaucousColour = Color(0xFF6589C3);
const kCameoPinkColour = Color(0xFFECB9C6);
const kAmaranthPinkColour = Color(0xFFEE95B3);
const kDeepChampagneColour = Color(0xFFECD099);
const kSlightlyMoreAgressive = Color(0xFFEE7979);

final kButtonTextStyle = TextStyle(
  // GoogleFonts gives you access to a ton of font families.
  fontFamily: GoogleFonts.roboto().fontFamily,
  fontSize: 18.0,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

final ProfileTextStyle = TextStyle(
  fontFamily: GoogleFonts.roboto().fontFamily,
  fontSize: 20,
);

final kquestionTextStyle = TextStyle(fontWeight: FontWeight.bold);
