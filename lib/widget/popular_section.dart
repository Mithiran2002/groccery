import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PopularSection extends StatelessWidget {
  final String title;
  final String? rating;
  final String description;
  final bool salaar;
  final Icon favouriteIcon;
  final String? timing;
  final bool rrr;
  final String imgUrl;
  final String? exploreTimings;
  final bool kgf;
  final String? layout;
  final String? amount;

  const PopularSection({
    required this.salaar,
    super.key,
    required this.title,
    required this.description,
    required this.favouriteIcon,
    required this.imgUrl,
    this.timing,
    this.exploreTimings,
    this.rating,
    this.rrr = true,
    this.layout,
    this.amount,
    this.kgf = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 1.5.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(1.5.h),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.sp),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    height: 23.h,
                    width: (salaar == true && rrr != true)
                        ? 100.w
                        : salaar == true
                            ? 46.w
                            : 40.w,
                    imageUrl: imgUrl,
                  ),
                ),
              ),
              Positioned(
                  left: (salaar == true && rrr != true)
                      ? 80.w
                      : salaar == true
                          ? 35.w
                          : 28.w,
                  top: 1.h,
                  child: CircleAvatar(
                      maxRadius: 12.sp,
                      backgroundColor: Colors.white,
                      child: favouriteIcon)),
              if (salaar != true)
                Positioned(
                    left: 28.w,
                    top: 16.h,
                    child: CircleAvatar(
                        maxRadius: 12.sp,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          size: 19.sp,
                          color: Colors.black,
                        ))),
            ],
          ),
          Gap(1.h),
          if (salaar == true && rrr != true)
            Row(
              children: [
                Text(
                  title,
                  maxLines: salaar == true ? 1 : 2,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  size: 17.sp,
                  color: Colors.yellow,
                ),
                Gap(1.w),
                Text(
                  rating ?? '',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          if ((salaar == true && rrr == true) || salaar == false)
            SizedBox(
              width: 40.w,
              child: Text(
                title,
                maxLines: salaar == true ? 1 : 2,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          Row(
            children: [
              SizedBox(
                width: (salaar == true && rrr != true) ? 55.w : 45.w,
                child: Text(
                  description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                    fontWeight:
                        salaar == false ? FontWeight.bold : FontWeight.w500,
                  ),
                ),
              ),
              if (salaar == true && rrr != true) const Spacer(),
              if (salaar == true && rrr != true)
                Text(
                  exploreTimings ?? '',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp,
                    fontWeight:
                        salaar == false ? FontWeight.bold : FontWeight.w500,
                  ),
                ),
            ],
          ),
          if (kgf != true)
            Row(
              children: [
                SizedBox(
                  width: (salaar == true && rrr != true) ? 55.w : 45.w,
                  child: Text(
                    layout ?? "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.sp,
                      fontWeight:
                          salaar == false ? FontWeight.bold : FontWeight.w500,
                    ),
                  ),
                ),
                if (salaar == true && rrr != true) const Spacer(),
                if (salaar == true && rrr != true)
                  Text(
                    amount ?? '',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontWeight:
                          salaar == false ? FontWeight.bold : FontWeight.w500,
                    ),
                  ),
              ],
            ),
          if (salaar == true && (salaar == true && rrr == true))
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
                    timing ?? "",
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
      ),
    );
  }
}
