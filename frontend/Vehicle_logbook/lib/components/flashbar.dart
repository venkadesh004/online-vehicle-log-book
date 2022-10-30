import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_logbook/utils/style_sheet.dart';

class Pop {
  static void successPop(
      BuildContext context, String title, String message, IconData icon) {
    showFlash(
      context: context,
      transitionDuration: Duration(milliseconds: 700),
      duration: Duration(milliseconds: 7000),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          behavior: FlashBehavior.floating,

          boxShadows: kElevationToShadow[4],
          backgroundColor: ThemePrimary,
          brightness: Brightness.light,
          // barrierBlur:50,
          // barrierColor:Colors.green,
          barrierDismissible: false,
          horizontalDismissDirection: HorizontalDismissDirection.endToStart,
          position: FlashPosition.top,
          child: FlashBar(
            //  padding: EdgeInsets.fromLTRB(10, 30, 30, 10),
            icon: Icon(
              icon,
              size: 30.0,
              color: Colors.white,
            ),
            title: Text(title,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                )),
            content: Text(message,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                )),
            indicatorColor: Colors.blue,
            showProgressIndicator: true,
            shouldIconPulse: true,
            actions: [
              TextButton(
                onPressed: () => controller.dismiss(),
                child: Text('Close',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    )),
              )
            ],
          ),
        );
        ;
      },
    );
  }

  static void errorPop(
      BuildContext context, String title, String message, IconData icon) {
    showFlash(
      context: context,
      transitionDuration: Duration(milliseconds: 700),
      duration: Duration(milliseconds: 7000),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          behavior: FlashBehavior.floating,
          boxShadows: kElevationToShadow[4],
          backgroundColor: Colors.red[400],
          brightness: Brightness.light,
          //barrierBlur:50,
          // barrierColor:Colors.red,
          barrierDismissible: false,
          horizontalDismissDirection: HorizontalDismissDirection.endToStart,
          position: FlashPosition.top,
          child: FlashBar(
            icon: Icon(
              icon,
              size: 40.0,
              color: Colors.white,
            ),
            title: Text(title,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                )),
            content: Text(message,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                )),
            indicatorColor: Colors.blue,
            showProgressIndicator: true,
            shouldIconPulse: true,
            actions: [
              TextButton(
                onPressed: () => controller.dismiss(),
                child: Text('Close',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    )),
              )
            ],
          ),
        );
      },
    );
  }

  static void messagePop(BuildContext context, String title, String message,
      IconData icon, List<Widget> widgetlist) {
    showFlash(
      context: context,
      transitionDuration: Duration(milliseconds: 700),
      duration: Duration(milliseconds: 4000),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          boxShadows: kElevationToShadow[4],
          behavior: FlashBehavior.floating,
          backgroundColor: ThemePrimary,
          position: FlashPosition.top,
          child: FlashBar(
            icon: Icon(
              icon,
              size: 40.0,
              color: Colors.white,
            ),
            title: Text(title,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                )),
            content: Text(message,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                )),
            shouldIconPulse: true,
            actions: [
              TextButton(
                onPressed: () => controller.dismiss(),
                child: Text('Close',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    )),
              ),
              widgetlist[0]
            ],
          ),
        );
      },
    );
  }

  static void success(BuildContext context, String message, IconData icon) {
    showFlash(
      context: context,
      duration: Duration(milliseconds: 3000),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          behavior: FlashBehavior.floating,
          boxShadows: kElevationToShadow[4],
          backgroundColor: ThemePrimary,
          brightness: Brightness.light,
          horizontalDismissDirection: HorizontalDismissDirection.endToStart,
          position: FlashPosition.bottom,
          child: FlashBar(
            icon: Icon(
              icon,
              size: 20.0,
              color: Colors.white,
            ),
            content: Text(message,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                )),
            primaryAction: TextButton(
              onPressed: () => controller.dismiss(),
              child: Text('Ok',
                  style: TextStyle(color: Colors.white, fontSize: n)),
            ),
          ),
        );
      },
    );
  }

  static void error(BuildContext context, String message, IconData icon) {
    showFlash(
      context: context,
      duration: Duration(milliseconds: 3000),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          behavior: FlashBehavior.floating,
          boxShadows: kElevationToShadow[4],
          backgroundColor: Colors.red[400],
          brightness: Brightness.light,
          horizontalDismissDirection: HorizontalDismissDirection.endToStart,
          position: FlashPosition.bottom,
          child: FlashBar(
            icon: Icon(
              icon,
              size: 20.0,
              color: Colors.white,
            ),
            content: Text(message,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                )),
            primaryAction: TextButton(
              onPressed: () => controller.dismiss(),
              child: Text('Ok',
                  style: TextStyle(color: Colors.white, fontSize: n)),
            ),
          ),
        );
      },
    );
  }

  static void successTop(BuildContext context, String message, IconData icon) {
    showFlash(
      context: context,
      duration: Duration(milliseconds: 3000),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          behavior: FlashBehavior.floating,
          boxShadows: kElevationToShadow[4],
          backgroundColor: ThemePrimary,
          brightness: Brightness.light,
          horizontalDismissDirection: HorizontalDismissDirection.endToStart,
          position: FlashPosition.top,
          child: FlashBar(
            shouldIconPulse: true,
            icon: Icon(
              icon,
              size: 20.0,
              color: Colors.white,
            ),
            content: Text(message,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                )),
            primaryAction: TextButton(
              onPressed: () => controller.dismiss(),
              child: Text('Ok',
                  style: TextStyle(color: Colors.white, fontSize: n)),
            ),
          ),
        );
      },
    );
  }

  static void errorTop(BuildContext context, String message, IconData icon) {
    showFlash(
      context: context,
      duration: Duration(milliseconds: 3000),
      builder: (context, controller) {
        return Flash(
          controller: controller,
          behavior: FlashBehavior.floating,
          boxShadows: kElevationToShadow[4],
          backgroundColor: Colors.red[400],
          brightness: Brightness.light,
          horizontalDismissDirection: HorizontalDismissDirection.endToStart,
          position: FlashPosition.top,
          child: FlashBar(
            shouldIconPulse: true,
            icon: Icon(
              icon,
              size: 20.0,
              color: Colors.white,
            ),
            content: Text(message,
                style: TextStyle(
                  fontSize: l,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                )),
            primaryAction: TextButton(
              onPressed: () => controller.dismiss(),
              child: Text('Ok',
                  style: TextStyle(color: Colors.white, fontSize: n)),
            ),
          ),
        );
      },
    );
  }
}
