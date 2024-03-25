import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MartWidget extends StatelessWidget {
  final String title;
  final String time;
  final String imgUrl;
  final String rating;

  const MartWidget(
      {super.key,
      required this.title,
      required this.time,
      required this.imgUrl,
      required this.rating});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedNetworkImage(
        fit: BoxFit.fitWidth,
        height: 13.h,
        width: 25.w,
        imageUrl: imgUrl,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 13.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        time,
        style: TextStyle(
            fontSize: 10.sp, fontWeight: FontWeight.w600, color: Colors.grey),
      ),
      trailing: SizedBox(
        width: 12.w,
        child: Row(
          children: [
            Icon(
              Icons.star,
              size: 12.sp,
              color: Colors.yellow,
            ),
            Text(
              rating,
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
