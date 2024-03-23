import 'dart:async';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:groccery_app/view/screens/login_screen/login_screen.dart';
import 'package:groccery_app/view/screens/dashboard/dashboard_screen.dart';

class SpalashScreen extends StatefulWidget {
  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  bool isLoggedin = false;
  isuserLoggedin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isLoggedin = prefs.getBool('isLoggedin') ?? false;
    });
    if (isLoggedin) {
      Timer(const Duration(seconds: 2), () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const DashBoardScreen(0)));
      });
    } else {
      Timer(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      });
    }
  }

  @override
  void initState() {
    isuserLoggedin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xFFe6470a),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/png/splash.png",
                    height: 40.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Gap(3.h),
                Text(
                  "Grocery",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 45.sp),
                ),
                Gap(5.h),
                CircularProgressIndicator(
                  color: Colors.white,
                ),
              ],
            )),
      ),
    );
  }
}
