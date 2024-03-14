import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class TipsWidget extends StatelessWidget {
  final String text;
  final bool badge;
  const TipsWidget({super.key, required this.text, required this.badge});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16.sp),
          padding: EdgeInsets.symmetric(horizontal: 17.sp),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.sp),
              border: Border.all(color: Colors.grey)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
        if (text == "₹40")
          Positioned(
              top: 6.5.h,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 54.5.sp,
                  height: 14.sp,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.sp),
                          bottomRight: Radius.circular(8.sp))),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Most tipped",
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ))
      ],
    );
  }
}
