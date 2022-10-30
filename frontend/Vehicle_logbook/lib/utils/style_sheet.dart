import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colors
const Color ThemePrimary = Color(0xFF212121);
const Color ThemeButton = Color(0xFF5F5F5F);
Color ThemeSecondary = Color(0xFF808080);
Color ThemeSecondary2 = Color(0xFFF1F5F6);
Color ThemeSupport = Color(0xFFFFC583);

// Color? fc_bg;
// Color? fc_bg2;
// Color? fc_community_bg;
// Color? fc_searchbar;
// Color? fc_bg_mild;
// Color? fc_textfield_bg;
// Color? fc_stock;
// Color? fc_card;
// Color fc_1 = Colors.grey.shade800;
// Color fc_2 = Colors.grey.shade800;
// Color? fc_3;
// Color? fc_4;
// Color? fc_5;
// Color? fc_5q;

Color? fc_1 = Colors.white;
Color? fc_2 = Colors.grey.shade100;
Color? fc_3 = Colors.grey.shade200;
Color? fc_bg = Colors.grey.shade300;
Color? fc_4 = Colors.grey.shade400;
Color? fc_5 = Colors.grey.shade500;
Color? fc_greylight = Colors.grey[600];
Color? fc_grey = Colors.grey[700];
Color? fc_greydark = Colors.grey[800];
Color? fc_black = Colors.grey[900];

//FONTS
double xxl = 20;
double xl = 16;
double l = 12;
double n = 10;
double s = 8;
double xs = 6;

double Width(BuildContext context) => MediaQuery.of(context).size.width;
double Height(BuildContext context) => MediaQuery.of(context).size.height;

//APP Theme
ThemeData ThemeFont = ThemeData(
  primaryColor: ThemePrimary,
  colorScheme: ColorScheme.light(),
  textTheme: GoogleFonts.poppinsTextTheme(),
  cardColor: Colors.white,
  dividerColor: Colors.white,
);
