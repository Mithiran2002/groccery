import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DineInWidget extends StatelessWidget {
  final String title;
  final String imgUrl;

  const DineInWidget({super.key, required this.title, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
          backgroundImage: CachedNetworkImageProvider(imgUrl),
          maxRadius: 19.sp,
        ),
        Gap(1.5.h),
        Text(
          title,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}