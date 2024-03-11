import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Deliver Now",
              style: TextStyle(fontSize: 12.sp, color: Colors.grey),
            ),
            Row(
              children: [
                Text(
                  "Hsr Layout",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w900),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 20.sp,
                ),
              ],
            ),
          ],
        ),
        CircleAvatar(
          maxRadius: 20.sp,
          backgroundColor: const Color(0xFFf0f0f1),
          child: const Icon(Icons.person_2_outlined),
        )
      ],
    );
  }
}