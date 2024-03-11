import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SearchbarWidget extends StatelessWidget {
  const SearchbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      shadowColor: const MaterialStatePropertyAll(Color(0xFFf0f0f1)),
      elevation: const MaterialStatePropertyAll(1),
      trailing: <Widget>[
        Icon(
          Icons.mic_outlined,
          size: 18.sp,
          color: Colors.black,
        ),
        SizedBox(
          height: 2.5.h,
          child: const VerticalDivider(
            color: Colors.grey,
          ),
        ),
        Icon(
          Icons.filter_list_rounded,
          size: 18.sp,
          color: Colors.black,
        )
      ],
      backgroundColor: const MaterialStatePropertyAll(Color(0xFFf0f0f1)),
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