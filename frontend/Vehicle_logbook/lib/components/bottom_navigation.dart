/*
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vehicle_logbook/utils/style_sheet.dart';
import '../router/open_screen.dart';
import 'relative_scale.dart';

class BottomNavigationWidget extends StatefulWidget {
  BuildContext mcontext;
  bool ishome;
  int order;

  BottomNavigationWidget(
      {Key? key,
      required this.ishome,
      required this.mcontext,
      required this.order})
      : super(key: key);

  @override
  _BottomNavigationWidgetState createState() {
    return _BottomNavigationWidgetState();
  }
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget>
    with RelativeScale {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String UserId = '';
  bool showProgress = false;
  late BuildContext mcontext;
  bool ishome = false;
  int order = 0;
  String skipSignup = '';

  @override
  void initState() {
    mcontext = widget.mcontext;
    ishome = widget.ishome;
    order = widget.order;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    initRelativeScaler(context);
    return IntrinsicHeight(
      child: Container(
        height: sy(45),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: ThemeButton,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(sy(10)),
              topRight: Radius.circular(sy(10))),
        ),
        child: SafeArea(
          child: Padding(
              padding: EdgeInsets.fromLTRB(sy(10), sy(5), sy(10), sy(5)),
              child: Container(
                height: sy(30),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(sy(0), sy(03), sy(0), sy(0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          if (ishome == true) {
                            //  Navigator.pushReplacement(mcontext, OpenScreen(widget: UserProfile()));
                          } else {
                            Navigator.of(mcontext).pop();
                          }
                        },
                        child: bottomMenuItem(" HOME ", 'bt_home.png', 1)),
                    GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          if (ishome == true) {
                            Navigator.push(mcontext,
                                OpenScreen(widget: LeaderboardScreen()));
                          } else {
                            if (order != 2)
                              Navigator.pushReplacement(mcontext,
                                  OpenScreen(widget: LeaderboardScreen()));
                          }
                        },
                        child:
                            bottomMenuItem(" LEADERBOARD ", 'ranking.png', 2)),
                    GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          debugPrint(UserId);
                          if (skipSignup == '1' || UserId == '0') {
                            Navigator.push(
                                context, OpenScreen(widget: AccountScreen()));
                          } else {
                            if (ishome == true) {
                              Navigator.push(mcontext,
                                  OpenScreen(widget: AccountScreen()));
                            } else {
                              if (order != 3)
                                Navigator.pushReplacement(mcontext,
                                    OpenScreen(widget: AccountScreen()));
                            }
                          }
                        },
                        child: bottomMenuItem("ACCOUNT", 'bt_account.png', 3)),
                  ],
                ),
              )),
        ),
      ),
    );
  }

  bottomMenuItem(String label, String icon, int index) {
    return Container(
      //height: sy(30),
      //  width: Width(mcontext)*0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/images/$icon',
              width: sy(14),
              height: sy(14),
              color: (index == order) ? Colors.white : Colors.grey.shade500),
          SizedBox(
            height: sy(3),
          ),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: sy(s - 2),
              color: ThemePrimary,
            ),
          )
        ],
      ),
    );
  }
}
*/
