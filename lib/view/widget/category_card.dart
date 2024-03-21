import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String? timing;
  final String imageUrl;
  final bool pushpa;
  final Function() onTab;

  const CategoryCard(
      {super.key,
      required this.title,
      this.timing,
      required this.imageUrl,
      this.pushpa = true,
      required this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        padding: EdgeInsets.only(
          top: 5.sp,
          left: 6.sp,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.sp),
          color: const Color(0xFFf0f0f1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(1.h),
            SizedBox(
              width: 26.w,
              child: Text(
                title,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
            ),
            if (pushpa == true)
              Text(
                timing ?? "",
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            pushpa == true ? Gap(2.h) : Gap(1.h),
            Align(
              alignment: Alignment.bottomRight,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.fitWidth,
                width: 17.w,
                height: 5.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}
