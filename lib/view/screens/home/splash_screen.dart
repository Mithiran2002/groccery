import 'dart:async';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/view/screens/dashboard_screen.dart';

class SpalashScreen extends StatefulWidget {
  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const DashBoardScreen(0)));
    });
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
