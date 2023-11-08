// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDark => themeMode == ThemeMode.dark;
}

class Mytheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      // bottomAppBarTheme: BottomAppBarTheme(color: Vx.red500),
      // backgroundColor: Vx.white,
      cardColor: Vx.yellow400,
      canvasColor: Vx.blue400,
      hoverColor: Vx.red500,
      hintColor: Vx.white,
      primaryColor: Vx.red500,
      secondaryHeaderColor: Vx.red500,
      shadowColor: Vx.white,
      splashColor: Vx.gray200,
      errorColor: Vx.black,
      selectedRowColor: Vx.blue100,
      indicatorColor: Vx.green500,
      dividerColor: Vx.gray900,
      highlightColor: Vx.white);

  static Color creamcolor = Color.fromRGBO(240, 240, 240, 1);
  static Color darkcreamcolor = Vx.gray800;
  static Color darkbluish = const Color.fromARGB(255, 22, 15, 48);
  static Color lightbluish = Vx.indigo300;

  static ThemeData darktheme(BuildContext context) => ThemeData(
        // bottomAppBarTheme: BottomAppBarTheme(color: darkbluish),
        backgroundColor: Vx.white,
        cardColor: Vx.yellow600,
        canvasColor: Vx.blue900,
        // hoverColor: const Color.fromARGB(255, 101, 11, 11),
        hoverColor: Vx.amber800,
        hintColor: Vx.gray200,
        primaryColor: Vx.yellow400,
        secondaryHeaderColor: darkbluish,
        splashColor: darkbluish,
        shadowColor: Color.fromARGB(255, 2, 57, 85),
        errorColor: Colors.blueGrey[400],
        selectedRowColor: Color.fromARGB(255, 29, 118, 162),
        indicatorColor: Vx.green700,
        dividerColor: darkbluish,
        highlightColor: Colors.blueGrey[400],

        fontFamily: GoogleFonts.poppins().fontFamily,
      );
}
