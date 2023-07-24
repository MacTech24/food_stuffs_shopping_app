import 'package:flutter/material.dart';
import 'package:food_stuff_app/src/constants/string_text.dart';
import '../../constants/colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Cart Screen",
              style: navBarStyle(black, 30, FontWeight.bold, 0),
              //Mactech
            ),
          )
        ],
      ),
    );
  }
}
