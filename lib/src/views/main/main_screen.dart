import 'package:flutter/material.dart';
import 'package:food_stuff_app/src/constants/colors.dart';
import 'package:food_stuff_app/src/constants/string_text.dart';
import 'package:food_stuff_app/src/controller/botton_nav_provider.dart';
import 'package:food_stuff_app/src/views/profile/profile_screen.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;

import '../Favorite/favorite_screen.dart';
import '../cart/cart_screen.dart';
import '../home_screen.dart';
import 'main_widget/botton_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> screenList = [
      HomeScreen(),
      FavoriteScreen(),
      CartScreen(),
      ProfileScreen(),
    ];
    return Consumer<BottomNavProvider>(
      builder: (_, bottomNavProvider, __) {
        return Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            backgroundColor: darkGreen,
            elevation: 0,
            centerTitle: true,
            title: Text(
              appName,
              style: style1(
                white,
                30,
                FontWeight.bold,
                0,
              ),
            ),
            actions: [
              Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  color: lightGreen,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.search,
                    color: white,
                    size: 24,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  bottomNavProvider.navIndex = 2;
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                    color: Color(0xFF42B248),
                    shape: BoxShape.circle,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: badges.Badge(
                      badgeContent: Text(
                        '10',
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                      child: Icon(
                        Icons.shopping_cart,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          drawer: Drawer(),
          body: screenList[bottomNavProvider.navIndex],
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
