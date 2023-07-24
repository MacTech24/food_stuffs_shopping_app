import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants/colors.dart';
import '../../../controller/botton_nav_provider.dart';
import 'bottom_nav_button.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(
      builder: (_, bottomNavProvider, __) {
        return SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: darkGreen,
            ),
            child: SizedBox(
              height: 65,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottonNavButtons(
                      icon: Icons.home,
                      text: "Home",
                      bgColor: (bottomNavProvider.navIndex == 0)
                          ? Color(0xFF1C6420)
                          : Colors.transparent,
                      onTap: () {
                        bottomNavProvider.navIndex = 0;
                      },
                    ),
                    BottonNavButtons(
                      icon: Icons.favorite,
                      text: "Favorite",
                      bgColor: (bottomNavProvider.navIndex == 1)
                          ? Color(0xFF1C6420)
                          : Colors.transparent,
                      onTap: () {
                        bottomNavProvider.navIndex = 1;
                      },
                    ),
                    BottonNavButtons(
                      icon: Icons.shopping_cart,
                      text: "Cart",
                      bgColor: (bottomNavProvider.navIndex == 2)
                          ? Color(0xFF1C6420)
                          : Colors.transparent,
                      onTap: () {
                        bottomNavProvider.navIndex = 2;
                      },
                    ),
                    BottonNavButtons(
                      icon: Icons.person,
                      text: "Profile",
                      bgColor: (bottomNavProvider.navIndex == 3)
                          ? Color(0xFF1C6420)
                          : Colors.transparent,
                      onTap: () {
                        bottomNavProvider.navIndex = 3;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
      },
    );
  }
}
