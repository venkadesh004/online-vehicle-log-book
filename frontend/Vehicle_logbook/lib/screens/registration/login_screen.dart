import 'package:flutter/material.dart';
import 'package:vehicle_logbook/components/relative_scale.dart';
import 'package:vehicle_logbook/router/right_open_screen.dart';
import 'package:vehicle_logbook/screens/registration/credential_screen.dart';
import 'package:vehicle_logbook/utils/style_sheet.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with RelativeScale {
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
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Container(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, RightOpenScreen(widget: CredentialScreen()));
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: ThemeButton,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: fc_1,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(sy(15), sy(10), sy(15), sy(0)),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/login_img.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(sy(0), sy(15), sy(0), 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'USER LOGIN',
                          style: TextStyle(
                            fontSize: sy(xl + 3),
                            fontWeight: FontWeight.w700,
                            color: fc_black,
                          ),
                        ),
                        Text(
                          "Explore yourself by logging in",
                          style: TextStyle(
                            fontSize: sy(s),
                            fontWeight: FontWeight.w200,
                            color: fc_grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sy(15),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: sy(32),
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(sy(5)),
                            topRight: Radius.circular(sy(5)),
                            bottomLeft: Radius.circular(sy(5)),
                            bottomRight: Radius.circular(sy(5)),
                          ),
                        ),
                        padding:
                            EdgeInsets.fromLTRB(sy(0), sy(0), sy(3), sy(0)),
                        child: TextField(
                          //controller: ETname,
                          keyboardType: TextInputType.name,
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person_outline_sharp,
                                size: sy(xl),
                                color: fc_5,
                              ),
                              hintText: 'User id',
                              hintStyle: TextStyle(
                                fontSize: sy(l),
                                color: fc_5,
                                fontWeight: FontWeight.w500,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              isDense: false),
                          style: TextStyle(
                              fontSize: sy(l),
                              color: fc_greydark,
                              fontWeight: FontWeight.w500,
                              height: 1.2),
                          textInputAction: TextInputAction.done,
                          autofocus: false,
                        ),
                      ),
                      SizedBox(
                        height: sy(15),
                      ),
                      Container(
                          height: sy(32),
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(sy(5)),
                              topRight: Radius.circular(sy(5)),
                              bottomLeft: Radius.circular(sy(5)),
                              bottomRight: Radius.circular(sy(5)),
                            ),
                          ),
                          padding:
                              EdgeInsets.fromLTRB(sy(0), sy(0), sy(3), sy(0)),
                          child: TextField(
                            //controller: ETpassword,
                            keyboardType: TextInputType.visiblePassword,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock_outline_rounded,
                                  size: sy(xl),
                                  color: fc_5,
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontSize: sy(l),
                                  color: fc_5,
                                  fontWeight: FontWeight.w500,
                                ),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                border: InputBorder.none,
                                isDense: false),
                            style: TextStyle(
                              fontSize: sy(l),
                              color: fc_greydark,
                              fontWeight: FontWeight.w500,
                              height: 1.2,
                            ),
                            textInputAction: TextInputAction.done,
                            autofocus: false,
                          )), //pas
                      SizedBox(
                        height: sy(3),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(sy(0), sy(0), sy(15), sy(0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // register(
                    //     name: ETname,
                    //     email: ETemail,
                    //     password: ETpassword,
                    //     context: context,
                    //     widget: widget);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(sy(10), sy(8), sy(10), sy(8)),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: sy(l - 1),
                        fontWeight: FontWeight.w900,
                        color: fc_1,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
