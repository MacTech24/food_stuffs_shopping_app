import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/string_text.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Favorite Screen",
              style: navBarStyle(black, 30, FontWeight.bold, 0),
            ),
          )
        ],
      ),
    );
  }
}
