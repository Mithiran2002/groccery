import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DineinBanner extends StatelessWidget {
  final String title;
  final String offer;
  final String disc;
  final String button;
  final String imgUrl;

  const DineinBanner(
      {super.key,
      required this.title,
      required this.offer,
      required this.disc,
      required this.button,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 1.w,
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(imgUrl))),
          ),
          SizedBox(
            height: 25.h,
            width: double.infinity,
            child: DecoratedBox(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.3),
                  ]),
            )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    offer,
                    style: TextStyle(
                        fontSize: 21.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(disc,
                      style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                  Gap(1.h),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.sp),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 2.w, vertical: 0.5.h),
                      child: Text(
                        button,
                        style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
