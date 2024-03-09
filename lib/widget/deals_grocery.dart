import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DealsGrocery extends StatelessWidget {
  const DealsGrocery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         
        Gap(1.5.h),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.sp),
              child: Container(
                decoration:  const BoxDecoration(),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  height: 23.h,
                  width: 46.w,
                  imageUrl:"" ,
                ),
              ),
            ),
            Positioned(
                left: 35.w,
                top: 1.h,
                child: CircleAvatar(
                    maxRadius: 12.sp,
                    backgroundColor: Colors.white,
                    )),
          ],
        ),
        Gap(1.h),
        Text(
          "Kellogs Crunchy fruit and nut muesli",
          maxLines: 1,
          style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 45.w,
          child: Text(
            "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 11.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 11.sp,
              color: Colors.yellow,
            ),
            Gap(0.5.w),
            SizedBox(
              width: 45.w,
              child: Text(
               "" ,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.normal),
              ),
            )
          ],
        )
      ],
    );
  }
}