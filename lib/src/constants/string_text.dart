import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

TextStyle style1(Color color, double size, FontWeight ftw, double? ht) {
  return GoogleFonts.mansalva(
    fontWeight: ftw,
    color: color,
    fontSize: size,
    height: ht,
  );
}

TextStyle style2(Color color, double size, FontWeight ftw, double? ht) {
  return GoogleFonts.poppins(
    fontWeight: ftw,
    color: color,
    fontSize: size,
    height: ht,
    shadows: [
      BoxShadow(color: darkGreen, blurRadius: 5, offset: Offset(5, 3)),
    ],
  );
}

TextStyle style3(Color color, double size, FontWeight ftw, double? ht) {
  return GoogleFonts.poppins(
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

TextStyle navBarStyle(Color color, double size, FontWeight ftw, double? ht) {
  return GoogleFonts.poppins(
    fontWeight: ftw,
    color: color,
    fontSize: size,
    height: ht,
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
const String lastText3 = "Policies";

//Signup Screen
const String signupTitle = "Register";
const String haveAccount = "Already have an account?";
const String signin = " Sign In";
const String login = "Login";
const String lastText4 = "By Signing Up you are agreeing to our";

//Home Screen
const String homeAppBarTitle = "Home";
const String text1 = "What Are You Waiting for?";
const String text2 = "20% Off";
const String text3 = "On All Food Stuffs";
