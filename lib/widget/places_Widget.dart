import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PlacesWidget extends StatelessWidget {
  final String first;
  final String secound;
  final String imgUrl;

  const PlacesWidget(
      {super.key,
      required this.first,
      required this.secound,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38.w,
      margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        image: DecorationImage(
          image: CachedNetworkImageProvider(imgUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.sp,
            ),
            child: Text(
              first,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.sp, bottom: 5.sp),
            child: Text(secound,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: 25.h,
            width: double.infinity,
            child: DecoratedBox(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.topLeft,
                  colors: [
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.5),
                  ]),
            )),
          ),
        ],
      ),
    );
  }
}
