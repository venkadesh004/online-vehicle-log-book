import 'package:flutter/material.dart';
import 'package:vehicle_logbook/components/relative_scale.dart';
import 'package:vehicle_logbook/screens/registration/credential_screen.dart';
import 'package:vehicle_logbook/utils/style_sheet.dart';

import '../../router/right_open_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with RelativeScale {
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
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
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: 0,
                child: _screenBody(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _screenBody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: PageView(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                controller: pageController,
                children: <Widget>[
                  firstNameWidget(),
                  ageWidget(),
                  genderWidget(),
                  contactWidget(),
                  addressWidget(),
                  bgWidget(),
                  useridWidget(),
                  emailWidget(),
                  passwordWidget(),
                ],
              ),
            ),
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
          ),
        ],
      ),
    );
  }

  firstNameWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "1 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What's your Full name?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
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
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.name,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your Full name',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_black,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  ageWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "2 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What's your Age?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
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
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your age',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  genderWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "3 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your gender identity?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
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
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.name,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your gender',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(3,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  contactWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "4 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your Contact number?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
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
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your Number',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(4,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  addressWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "5 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your Contact Address?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
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
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your Address',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(5,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  bgWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "6 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your Blood group?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
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
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.name,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your blood group',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(6,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  useridWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "7 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your User ID?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
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
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your user ID',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(7,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  emailWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "8 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your Email ID?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
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
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your Email ID',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(8,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  passwordWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      width: MediaQuery.of(context).size.width,
      //  height: Height(context),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "9 of 9",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            SizedBox(
              height: sy(15),
            ),
            Text(
              "What is your Password?",
              style: TextStyle(
                  fontSize: sy(l + 2),
                  color: fc_black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              height: sy(35),
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
              padding: EdgeInsets.fromLTRB(sy(15), sy(0), sy(3), sy(0)),
              alignment: Alignment.center,
              child: TextField(
                //controller: ETname,
                keyboardType: TextInputType.visiblePassword,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  // counter: Offstage(),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    fontSize: sy(n + 2),
                    color: fc_grey,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: sy(n + 2),
                  color: fc_black,
                ),
                textInputAction: TextInputAction.done,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: sy(30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sy(5)),
                    ),
                  ),
                  onPressed: () {
                    pageController.animateToPage(9,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  },
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                      fontSize: sy(l),
                      color: fc_1,
                    ),
                  )),
            ),
            SizedBox(
              height: sy(15),
            ),
          ],
        ),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  /*treatmentWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      height: Height(context),
      width: Width(context),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: sy(50),
            ),
            Text(
              "2 of 6",
              style: TextStyle(
                fontSize: sy(l),
                color: fc_black,
              ),
            ),
            SizedBox(
              height: sy(20),
            ),
            Text(
              "Which hair style interest you most?",
              style: TextStyle(
                fontSize: sy(xl),
                color: fc_black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: sy(10),
            ),
            Text(
              Lang(
                  "We'll show you photos, reviews, and other content based on your preferences.",
                  "سنعرض لك الصور والتعليقات والمحتويات الأخرى بناءً على تفضيلاتك."),
              style: ts_Bold(sy(n), fc_3),
            ),
            SizedBox(
              height: sy(30),
            ),
            GestureDetector(
              onTap: () {
                EXcontroler.expanded = true;
              },
              child: Column(
                children: <Widget>[
                  Text(
                    Lang("Add more", "أضف المزيد"),
                    style: ts_Regular(sy(n), fc_1),
                  ),
                  SizedBox(
                    height: sy(3),
                  ),
                  Container(
                    color: fc_2,
                    height: sy(1),
                    width: Width(context) * 0.17,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              child: Column(
                children: [
                  for (int i = 0; i < selectTreatment.length; i++)
                    GestureDetector(
                        child: Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.fromLTRB(sy(10), sy(3), sy(10), sy(3)),
                          margin:
                              EdgeInsets.fromLTRB(sy(0), sy(2), sy(5), sy(4)),
                          decoration: decoration_border(fc_bg, fc_1, sy(1),
                              sy(10), sy(10), sy(10), sy(10)),
                          child: Row(
                            children: [
                              Text(
                                Const.procedureList[
                                    int.parse(selectTreatment[i].toString()) -
                                        1]['o_name'],
                                style: ts_Regular(sy(s), fc_1),
                              ),
                              SizedBox(
                                width: sy(5),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectTreatment.removeAt(i);
                                  });
                                },
                                child: Icon(
                                  Icons.clear,
                                  size: sy(n),
                                  color: fc_1,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: SizedBox(
                          width: 5,
                        ))
                      ],
                    ))
                ],
              ),
            ),
            SizedBox(
              height: sy(10),
            ),
            Container(
              child: Column(children: <Widget>[
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ThemeButton,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(sy(5)),
                      ),
                    ),
                    onPressed: () {
                      pageController.animateToPage(2,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);

                      // if(ETname.text!='' && ETemail.text!=''){
                      //   _updateUser();
                      // }else{
                      //   Pop.errorTop(context, 'Fill email & name', Icons.warning);
                    },
                    child: ProgressButton(
                      bttext: Lang('NEXT', 'التالي'),
                      btwidth: Width(context),
                      showProgress: showProgress,
                      btheight: sy(35),
                    )),
                SizedBox(
                  height: sy(15),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  dobWidget() {
    return Container(
        padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
        height: Height(context),
        width: Width(context),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: sy(50),
              ),
              Text(
                "3 of 6",
                style: ts_Regular(sy(l), fc_3),
              ),
              SizedBox(
                height: sy(20),
              ),
              Text(
                Lang("What year were you born?", "في اي سنة ولدت؟"),
                style: ts_Bold(sy(xl), fc_1),
              ),
              SizedBox(
                height: sy(15),
              ),
              Text(
                Lang("We won't tell anyone,", "لن نخبر أحدا ،") +
                    Username +
                    Lang(
                        ". but we will show you reviews and photos from other people at a similar age.",
                        ". لكننا سنعرض لك تعليقات وصورًا من أشخاص آخرين في عمر مماثل."),
                style: ts_Bold(sy(n), fc_3),
              ),
              SizedBox(
                height: sy(30),
              ),
              Container(
                width: Width(context),
                decoration: decoration_border(
                    fc_bg, fc_5, 1, sy(5), sy(5), sy(5), sy(5)),
                padding: EdgeInsets.fromLTRB(sy(3), sy(0), sy(3), sy(0)),
                child: ExpandablePanel(
                  controller: EXcontroler,
                  header: Container(
                    height: sy(30),
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(sy(0), sy(0), sy(0), sy(0)),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: sy(5),
                        ),
                        Text(
                          (selectedYear != '')
                              ? selectedYear
                              : Lang("Select year", "اختر السنة"),
                          style: ts_Regular(sy(l), fc_3),
                        ),
                      ],
                    ),
                  ),
                  expanded: Container(
                      height: Height(context) * 0.4,
                      decoration: decoration_round(
                          Colors.white, sy(1), sy(1), sy(0), sy(0)),
                      //  height: sy(45),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            for (int i = 2021; i > 1940; i--) yearCard(i),
                            SizedBox(
                              height: sy(10),
                            ),
                          ],
                        ),
                      )),
                  collapsed: SizedBox(
                    width: 5,
                  ),
                ),
              ),
              SizedBox(
                height: sy(40),
              ),
              Container(
                child: Column(children: <Widget>[
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: TheamPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(sy(5)),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if (selectedYear == '') {
                            Pop.errorTop(
                                context,
                                Lang(
                                    'Select correct year', "حدد السنة الصحيحة"),
                                Icons.warning);
                          } else {
                            pageController.animateToPage(3,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.linear);
                          }
                        });

                        // if(ETname.text!='' && ETemail.text!=''){
                        //   _updateUser();
                        // }else{
                        //   Pop.errorTop(context, Lang('Fill email & name'   ,"ملء البريد الإلكتروني والاسم"  ), Icons.warning);
                      },
                      child: ProgressButton(
                        bttext: Lang('NEXT', 'التالي'),
                        btwidth: Width(context),
                        showProgress: showProgress,
                        btheight: sy(35),
                      )),
                  SizedBox(
                    height: sy(15),
                  ),
                  skipStageButton(),
                  SizedBox(
                    height: sy(10),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }

  genderWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(sy(15), sy(5), sy(15), sy(5)),
      height: Height(context),
      width: Width(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: sy(50),
          ),
          Text(
            "4 of 6",
            style: ts_Regular(sy(l), fc_3),
          ),
          SizedBox(
            height: sy(20),
          ),
          Text(
            Lang("What is your gender identity?", "ما هي هويتك الجنسية؟"),
            style: ts_Bold(sy(xl), fc_1),
          ),
          SizedBox(
            height: sy(15),
          ),
          Text(
            Lang(
                "All genders are welcome in the Tresses community, but knowing how you identify helps us show you more relevant content.",
                "جميع الأجناس مرحب بها في مجتمع Tresses ، ولكن معرفة كيفية تحديدك يساعدنا في عرض محتوى أكثر صلة لك."),
            style: ts_Bold(sy(n), fc_3),
          ),
          SizedBox(
            height: sy(30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = 'female';
                  });
                },
                behavior: HitTestBehavior.opaque,
                child: Container(
                  height: sy(30),
                  decoration: decoration_border(
                      (selectedGender == 'female') ? fc_textfield_bg : fc_bg,
                      fc_5,
                      1,
                      sy(0),
                      sy(0),
                      sy(0),
                      sy(0)),
                  padding: EdgeInsets.fromLTRB(sy(5), sy(0), sy(5), sy(0)),
                  alignment: Alignment.center,
                  child: Text(
                    Lang("Female", "أنثى"),
                    style: ts_Regular(sy(n), fc_2),
                  ),
                ),
              )),
              SizedBox(
                width: sy(10),
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = 'male';
                  });
                },
                behavior: HitTestBehavior.opaque,
                child: Container(
                  height: sy(30),
                  decoration: decoration_border(
                      (selectedGender == 'male') ? fc_textfield_bg : fc_bg,
                      fc_5,
                      1,
                      sy(0),
                      sy(0),
                      sy(0),
                      sy(0)),
                  padding: EdgeInsets.fromLTRB(sy(5), sy(0), sy(5), sy(0)),
                  alignment: Alignment.center,
                  child: Text(
                    Lang("Male", "ذكر"),
                    style: ts_Regular(sy(n), fc_2),
                  ),
                ),
              )),
              SizedBox(
                width: sy(10),
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = 'nonbinary';
                  });
                },
                behavior: HitTestBehavior.opaque,
                child: Container(
                  height: sy(30),
                  decoration: decoration_border(
                      (selectedGender == 'nonbinary') ? fc_textfield_bg : fc_bg,
                      fc_5,
                      1,
                      sy(0),
                      sy(0),
                      sy(0),
                      sy(0)),
                  padding: EdgeInsets.fromLTRB(sy(5), sy(0), sy(5), sy(0)),
                  alignment: Alignment.center,
                  child: Text(
                    Lang("Nonbinary", "غير ثنائي"),
                    style: ts_Regular(sy(n), fc_2),
                  ),
                ),
              )),
            ],
          ),
          SizedBox(
            height: sy(30),
          ),
          // Row(
          //   children: [
          //
          //     GestureDetector(
          //       onTap: (){
          //
          //         setState(() {
          //
          //           if (selectedGenderCheckList.contains('1')) {
          //             selectedGenderCheckList.removeAt(selectedGenderCheckList.indexOf('1'));
          //
          //           } else {
          //             selectedGenderCheckList.add('1');
          //           }
          //
          //         });
          //       },
          //       child: Container(
          //         height: sy(20),
          //         width:  sy(20),
          //         decoration: decoration_border(fc_bg,fc_5, 1, sy(0), sy(0), sy(0), sy(0)),
          //         padding: EdgeInsets.fromLTRB(sy(3), sy(0), sy(3), sy(0)),
          //         child: (selectedGenderCheckList.contains('1'))?Icon(Icons.check,size: sy(l),color: Colors.green,):null,
          //       ),
          //     ),
          //     SizedBox(width: sy(10),),
          //     Text("Prefer to self-describe ",style: ts_Regular(sy(n), fc_2)),
          //
          //   ],
          // ),
          // SizedBox(height: sy(10),),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (selectedGenderCheckList.contains('2')) {
                      selectedGenderCheckList
                          .removeAt(selectedGenderCheckList.indexOf('2'));
                    } else {
                      selectedGenderCheckList.add('2');
                    }
                  });
                },
                child: Container(
                  height: sy(20),
                  width: sy(20),
                  decoration: decoration_border(
                      fc_bg, fc_5, 1, sy(0), sy(0), sy(0), sy(0)),
                  padding: EdgeInsets.fromLTRB(sy(3), sy(0), sy(3), sy(0)),
                  child: (selectedGenderCheckList.contains('2'))
                      ? Icon(
                          Icons.check,
                          size: sy(l),
                          color: Colors.green,
                        )
                      : null,
                ),
              ),
              SizedBox(
                width: sy(10),
              ),
              Expanded(
                child: Text(
                  Lang("I'm interested in gender confirmation procedures ",
                      "أنا مهتم بإجراءات تأكيد الجنس"),
                  style: ts_Regular(sy(n), fc_2),
                ),
              )
            ],
          ),
          SizedBox(
            height: sy(30),
          ),
          Column(children: <Widget>[
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: TheamPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(sy(5)),
                  ),
                ),
                onPressed: () {
                  if (selectedGender != '') {
                    pageController.animateToPage(4,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                  } else {
                    Pop.errorTop(
                        context,
                        Lang("Please select gender", "يرجى تحديد الجنس"),
                        Icons.warning);
                  }
                },
                child: ProgressButton(
                  bttext: Lang('NEXT', 'التالي'),
                  btwidth: Width(context),
                  showProgress: showProgress,
                  btheight: sy(35),
                )),
            SizedBox(
              height: sy(15),
            ),
            skipStageButton(),
            SizedBox(
              height: sy(10),
            ),
          ]),
        ],
      ),
    );
  }*/
}
