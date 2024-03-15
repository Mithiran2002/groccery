import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()  onTab;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.sp))),
              minimumSize: MaterialStatePropertyAll(Size(90.w, 6.h)),
              backgroundColor:
                  const MaterialStatePropertyAll(Color(0xFFe6470a))),
          onPressed: onTab,
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 13.sp),
          )),
    );
  }
}
