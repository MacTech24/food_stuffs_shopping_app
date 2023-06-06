import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/colors.dart';
import '../../constants/string_text.dart';
import '../login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      final route = MaterialPageRoute(
        builder: (context) => LoginScreen(),
      );
      Navigator.push(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: transparent),
    );
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: darkGreen,
        width: size.width,
        height: size.height,
        child: Center(
          child: Text(
            splashText,
            style: style(white, 50, FontWeight.bold, 1.2),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
