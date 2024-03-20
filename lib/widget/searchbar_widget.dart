import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/screens/dashboard/searchbar_page.dart';

class SearchbarWidget extends StatelessWidget {
  final bool? search;
  final bool? type;
  const SearchbarWidget({
    super.key,
    this.search = true,
    this.type,
  });
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SearchbarPage()));
      },
      shape: search != true
          ? MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.sp)))
          : MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.sp))),
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
        ),
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
