import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  static bool isLightTheme = true;
  ThemeData _themeData = _lightTheme;

  ThemeData get themeData => _themeData;

  lightTheme() {
    _themeData = _lightTheme;
    isLightTheme = true;
    notifyListeners();
  }

  darkTheme() {
    _themeData = _darkTheme;
    isLightTheme = false;
    notifyListeners();
  }
}

ThemeData _lightTheme = ThemeData.light().copyWith(
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.black),
      headline2: TextStyle(color: Colors.black54),
      headline3: TextStyle(color: Colors.white),
      headline4: TextStyle(color: Colors.white),
      headline5: TextStyle(color: Colors.green[800]),
    ),
    cardColor: Colors.white,
    primaryColor: Color(0XFF075E55),
    secondaryHeaderColor: Color(0XFFF4F4F4),
    primaryColorLight: Color(0XFF319F94),
    dividerTheme:
        DividerThemeData(color: Colors.black26, indent: 78.0, endIndent: 10.0),
    buttonColor: Color(0xff64B7AE),
    primaryIconTheme: IconThemeData(color: Color(0xff557679)),
    iconTheme: IconThemeData(color: Colors.white),
    accentIconTheme: IconThemeData(color: Colors.white),
    textSelectionColor: Colors.white,
    accentColor: Color(0XFF00CC3F),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0XFF00CC3F),
    ),
    indicatorColor: Colors.white,
    scaffoldBackgroundColor: Colors.white);

ThemeData _darkTheme = ThemeData.light().copyWith(
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.white),
      headline2: TextStyle(color: Colors.white60),
      headline3: TextStyle(color: Colors.white70),
      headline4: TextStyle(color: Colors.black),
      headline5: TextStyle(color: Colors.black),
    ),
    cardColor: Color(0XFF101D25),
    primaryColor: Color(0XFF1F2D36),
    secondaryHeaderColor: Color(0XFF101D25),
    primaryColorLight: Color(0XFF11A599),
    dividerTheme:
        DividerThemeData(color: Colors.white24, indent: 78.0, endIndent: 10.0),
    buttonColor: Colors.white,
    primaryIconTheme: IconThemeData(color: Colors.white),
    iconTheme: IconThemeData(color: Colors.black),
    accentIconTheme: IconThemeData(color: Color(0XFF1F2D36)),
    textSelectionColor: Colors.white70,
    accentColor: Color(0XFF10A296),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0XFFF15A999),
    ),
    indicatorColor: Color(0XFFF15A999),
    scaffoldBackgroundColor: Color(0XFF101D25));
