// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_stuff_app/src/controller/botton_nav_provider.dart';
import 'package:provider/provider.dart';

import '../../../constants/colors.dart';
import '../../../constants/string_text.dart';

class BottonNavButtons extends StatelessWidget {
  final void Function()? onTap;
  final IconData icon;
  final String text;
  final Color bgColor;

  const BottonNavButtons({
    Key? key,
    this.onTap,
    required this.icon,
    required this.text,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(
      builder: (_, bottomNavProvider, __) {
        return InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(3),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: white,
                    size: 27,
                  ),
                  Expanded(
                    child: Text(
                      text,
                      style: navBarStyle(white, 11, FontWeight.bold, 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
