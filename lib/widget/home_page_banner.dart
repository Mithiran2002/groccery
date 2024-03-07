import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePageBanner extends StatelessWidget {
  final String text;
  final String off;
  final String order;
  final String buttontxt;
  final String imageUrl;

  const HomePageBanner(
      {super.key,
      required this.text,
      required this.off,
      required this.order,
      required this.buttontxt,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.sp, right: 10.sp, left: 10.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: const Color(0xFFffd89f),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.topRight,
              colors: [Color(0xFFfff3d6), Color(0xFFffd89f)])),
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
                      fontSize: 12.sp,
                      color: const Color(0xFF1c2440),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "25%0ff",
                  style: TextStyle(
                      fontSize: 23.sp,
                      color: const Color(0xFF1c2440),
                      fontWeight: FontWeight.bold),
                ),
                Text("on all food orders",
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
          Align(
            alignment: Alignment.bottomCenter,
            child: CachedNetworkImage(
                fit: BoxFit.cover,
                width: 30.w,
                imageUrl:
                    "https://freepngimg.com/download/food/139180-food-plate-fish-download-hd.png"),
          ),
        ],
      ),
    );
  }
}
