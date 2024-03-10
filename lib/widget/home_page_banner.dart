import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePageBanner extends StatelessWidget {
  final String off;
  final List<Color> colors;
  final String imageUrl;
  final Color? positionedColor;
  final String discript;

  const HomePageBanner({
    super.key,
    required this.off,
    required this.colors,
    required this.imageUrl,
    required this.positionedColor,
    required this.discript,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.5.w),
      padding: EdgeInsets.only(top: 10.sp, left: 10.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: const Color(0xFFffd89f),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.topRight,
              colors: colors)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get up to",
                  style: TextStyle(
                      fontSize: 11.sp,
                      color: const Color(0xFF1c2440),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  off,
                  style: TextStyle(
                      fontSize: 21.sp,
                      color: const Color(0xFF1c2440),
                      fontWeight: FontWeight.bold),
                ),
                Text(discript,
                    style: TextStyle(
                        fontSize: 11.sp,
                        color: const Color(0xFF1c2440),
                        fontWeight: FontWeight.w500)),
                Gap(1.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.sp),
                    color: const Color(0xFF1c2440),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
                    child: Text(
                      "Order Now",
                      style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.sp),
            child: SizedBox(
              width: 45.w,
              child: Stack(
                children: [
                  Positioned(
                    top: 0.9.h,
                    child: CircleAvatar(
                      maxRadius: 15.h,
                      backgroundColor: positionedColor,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CachedNetworkImage(
                      fit: BoxFit.fitWidth,
                      width: 34.w,
                      imageUrl: imageUrl,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
