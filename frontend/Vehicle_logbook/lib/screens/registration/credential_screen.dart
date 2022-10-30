import 'package:flutter/material.dart';
import 'package:vehicle_logbook/components/relative_scale.dart';
import 'package:vehicle_logbook/router/left_open_screen.dart';
import 'package:vehicle_logbook/router/right_open_screen.dart';
import 'package:vehicle_logbook/screens/registration/login_screen.dart';
import 'package:vehicle_logbook/screens/registration/register_screen.dart';
import 'package:vehicle_logbook/utils/style_sheet.dart';

class CredentialScreen extends StatefulWidget {
  const CredentialScreen({Key? key}) : super(key: key);

  @override
  State<CredentialScreen> createState() => _CredentialScreenState();
}

class _CredentialScreenState extends State<CredentialScreen>
    with RelativeScale {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    initRelativeScaler(context);
    return MaterialApp(
      theme: ThemeFont,
      home: SafeArea(
        top: false,
        child: Scaffold(
          key: _scaffoldKey,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.fromLTRB(sy(0), sy(40), sy(0), sy(0)),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'USER CREDENTIAL',
                    style: TextStyle(
                      fontSize: sy(l),
                      fontWeight: FontWeight.w800,
                      color: fc_black,
                    ),
                  ),
                  SizedBox(
                    height: sy(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoxContainer("Login", 'login.png', LoginScreen()),
                      BoxContainer("Register", 'edit.png', RegisterScreen()),
                    ],
                  ),
                  SizedBox(
                    height: sy(10),
                  ),
                  Text(
                    'SERVICE CENTRE CREDENTIAL',
                    style: TextStyle(
                      fontSize: sy(l),
                      fontWeight: FontWeight.w800,
                      color: fc_black,
                    ),
                  ),
                  SizedBox(
                    height: sy(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoxContainer("Login", 'login.png', LoginScreen()),
                      BoxContainer("Register", 'edit.png', RegisterScreen()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxContainer(String text, String image, Widget method_name) {
    //String path = "assets/images/${image}";
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context, LeftOpenScreen(widget: method_name));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.38,
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
          color: ThemeButton,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/${image}",
              width: sy(40),
              height: sy(40),
            ),
            SizedBox(
              height: sy(10),
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: sy(n),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
