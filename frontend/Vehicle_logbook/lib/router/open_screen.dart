import 'package:flutter/material.dart';

class OpenScreen extends PageRouteBuilder {
  final Widget widget;
  OpenScreen({required this.widget})
      : super(pageBuilder: (BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return widget;
  }, transitionsBuilder: (BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return FadeTransition(opacity:animation, child: child);
  }
  );

}
