import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: 3.w, right: 3.w, top: 3.h, bottom: 1.h),
            child: header(),
          ),
          Gap(2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: searchBar(),
          ),
        ],
      )),
    );
  }

  Widget header() {
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
          backgroundColor: Color(0xFFf0f0f1),
          child: Icon(Icons.person_2_outlined),
        )
      ],
    );
  }

  Widget searchBar() {
    return SearchBar(
      shadowColor: MaterialStatePropertyAll(Color(0xFFf0f0f1)),
      elevation: MaterialStatePropertyAll(1),
      trailing: <Widget>[
        Icon(
          Icons.mic_outlined,
          size: 18.sp,
          color: Colors.black,
        ),
        Icon(
          Icons.filter_list_rounded,
          size: 18.sp,
          color: Colors.black,
        )
      ],
      backgroundColor: MaterialStatePropertyAll(Color(0xFFf0f0f1)),
      hintText: "Search for food,grocery,etc",
      hintStyle: MaterialStatePropertyAll(TextStyle(
          fontWeight: FontWeight.w600, color: Colors.grey, fontSize: 11.sp)),
      leading: Icon(
        Icons.search_outlined,
        size: 18.sp,
        color: Colors.black,
      ),
    );
  }
}
