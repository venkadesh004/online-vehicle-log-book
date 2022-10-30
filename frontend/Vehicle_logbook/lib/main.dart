import 'package:flutter/material.dart';
import 'package:vehicle_logbook/screens/registration/splash_screen.dart';
import 'package:vehicle_logbook/utils/style_sheet.dart';

import 'screens/ServiceHomeComplete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeFont,
      title: 'Online Quiz',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
