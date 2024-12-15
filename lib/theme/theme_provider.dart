import 'package:flutter/material.dart';
import 'package:isar_crud/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  // initially, theme is light mode
  ThemeData _themeData = lightMode; 

  // getter method to access the theme from other parts of the code
   ThemeData get themeData => _themeData;

// getter method to see if we are in dark mode or not
  bool get isDarkMode => _themeData == darkMode;

  set themeData (ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}