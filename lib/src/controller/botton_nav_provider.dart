import 'package:flutter/material.dart';

class BottomNavProvider extends ChangeNotifier {
  int _navIndex = 0;
  int get navIndex => _navIndex;
  set navIndex(int newNavIndex) {
    _navIndex = newNavIndex;
    notifyListeners();
  }
}
