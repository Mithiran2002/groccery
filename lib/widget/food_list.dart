import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FoodList extends StatelessWidget {
  final String? title;
  final String? secound;
  final String? price;
  final String? imgUrl;

  const FoodList(
      {super.key, this.title, this.secound, this.price, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 38.w,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title ?? "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Gap(0.8.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  secound ?? "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 9.5.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              Gap(1.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  price ?? "",
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Gap(2.h),
            ],
          ),
        ),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.sp),
              child: CachedNetworkImage(
                  fit: BoxFit.fitHeight, height: 12.h, imageUrl: imgUrl ?? ""),
            ),
            Positioned(
                top: 50.sp,
                left: 8.sp,
                child: InputQty(
                    initVal: 0,
                    decoration: QtyDecorationProps(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(13.sp)),
                        fillColor: Colors.white,
                        btnColor: Color(0xFFe6470a),
                        qtyStyle: QtyStyle.classic))),
          ],
        ),
      ],
    );
  }
}
