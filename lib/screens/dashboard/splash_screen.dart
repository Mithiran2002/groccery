import 'dart:async';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/screens/dashboard/dashboard_screen.dart';

class SpalashScreen extends StatefulWidget {
  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => DashBoardScreen(0)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFe6470a),
          body:Column(
            children: [
               Image.asset(
            "assets/png/intro.png",
            height: 7.h,
          ),
          Text("Grocery")
            ],
          )
    
          ),
    );
  }
}
