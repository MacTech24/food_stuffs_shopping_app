import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/string_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Profile Screen",
              style: navBarStyle(black, 30, FontWeight.bold, 0),
            ),
          )
        ],
      ),
    );
  }
}
