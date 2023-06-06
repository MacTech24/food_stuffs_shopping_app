import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

TextStyle style(Color color, double size, FontWeight ftw, double? ht) {
  return GoogleFonts.mansalva(
    fontWeight: ftw,
    color: color,
    fontSize: size,
    height: ht,
  );
}

TextStyle loginStyle(Color color, double size, FontWeight ftw, double? ht) {
  return GoogleFonts.poppins(
    fontWeight: ftw,
    color: color,
    fontSize: size,
    height: ht,
  );
}

TextStyle appStyle(Color color, double size, FontWeight ftw, double? ht) {
  return GoogleFonts.mansalva(
    fontWeight: ftw,
    color: color,
    fontSize: size,
    height: ht,
    shadows: [
      BoxShadow(color: darkGreen, blurRadius: 5, offset: Offset(5, 3)),
    ],
  );
}

const String splashText = "FUDS";

//Login Screen
const String loginTitle = "Sign in to Continue";
const String appName = "FUDS";
const String forgetPassword = "Forget Passord?";
const String newUser = "New to FUDS?";
const String signUp = " Signup";
const String lastText = "By Signing in you are agreeing to our";
const String lastText2 = "Terms";
const String lastText3 = "Policy";
