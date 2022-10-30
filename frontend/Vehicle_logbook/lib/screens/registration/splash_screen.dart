import 'package:flutter/material.dart';
import 'package:vehicle_logbook/components/relative_scale.dart';
import 'package:vehicle_logbook/router/left_open_screen.dart';
import 'package:vehicle_logbook/screens/registration/credential_screen.dart';
import 'package:vehicle_logbook/utils/style_sheet.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with RelativeScale {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool showProgress = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    initRelativeScaler(context);
    return MaterialApp(
      theme: ThemeFont,
      home: Container(
        child: SafeArea(
          top: false,
          child: Scaffold(
            key: _scaffoldKey,
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: welcomeWidget(),
            ),
          ),
        ),
      ),
    );
  }

  welcomeWidget() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/scooter.jpg",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(sy(10), sy(0), sy(10), 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Online Vehicle History Log Book",
                    style: TextStyle(
                      fontSize: sy(xl - 2),
                      color: ThemePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: sy(3),
                  ),
                  Text(
                    'Where you can check various info’s about Vehicle',
                    style: TextStyle(
                      fontSize: sy(n),
                      fontWeight: FontWeight.w500,
                      color: ThemePrimary,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: fc_greydark,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context, LeftOpenScreen(widget: CredentialScreen()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.fromLTRB(sy(10), sy(8), sy(10), sy(8)),
                      child: Text(
                        'Get started',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: sy(l),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sy(10),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
