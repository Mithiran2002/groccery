import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/view/widget/inputform_field.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CouponsPage extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? thirdline;
  final String? trailing;
  final String? imgUrl;
  List<Map<String, dynamic>> coupon = [
    {
      "title": "AXIO232476",
      "subtitle": "40% off Up to ₹2500 ",
      "thirdline": "View Details",
      "trailing": "Apply",
      "imgUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Axis_Bank_logo.svg/2560px-Axis_Bank_logo.svg.png",
    },
    {
      "title": "HDFC75849",
      "subtitle": "50% off Up to ₹2800 ",
      "thirdline": "View Details",
      "trailing": "Apply",
      "imgUrl":
          "https://static.vecteezy.com/system/resources/previews/019/909/407/non_2x/hdfc-transparent-hdfc-free-free-png.png",
    },
    {
      "title": "PAYTM4568",
      "subtitle": "70% off Up to ₹3500 ",
      "thirdline": "View Details",
      "trailing": "Apply",
      "imgUrl":
          "https://static.vecteezy.com/system/resources/thumbnails/019/909/641/small/paytm-transparent-paytm-free-free-png.png",
    },
    {
      "title": "IDDB865745",
      "subtitle": "55% off Up to ₹5500 ",
      "thirdline": "View Details",
      "trailing": "Apply",
      "imgUrl":
          "https://companieslogo.com/img/orig/8473.T_BIG-4e15b104.png?t=1685512482",
    },
    {
      "title": "IDDB865745",
      "subtitle": "48% off Up to ₹8500 ",
      "thirdline": "View Details",
      "trailing": "Apply",
      "imgUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Karur_Vysya_Bank.svg/2560px-Karur_Vysya_Bank.svg.png",
    },
  ];

  CouponsPage(
      {super.key,
      this.title,
      this.subtitle,
      this.thirdline,
      this.trailing,
      this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 22.sp,
                      color: Colors.black,
                    )),
                Gap(1.h),
                Text(
                  "Coupons",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 25.sp),
                ),
                Gap(1.5.h),
                InputFormField(title: "Type Coupon Code"),
                Gap(3.h),
                Text(
                  "Avilable Coupon",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp),
                ),
                Gap(3.h),
                ...List.generate(
                    coupon.length,
                    (index) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.h),
                          child: ListTile(
                            title: Container(
                              margin: EdgeInsets.only(right: 26.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.sp),
                                  color: const Color(0xFFf0f0f1)),
                              child: Text(
                                coupon[index]["title"],
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                            trailing: Text(
                              coupon[index]["trailing"],
                              style: TextStyle(
                                  color: Colors.green, fontSize: 10.sp),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  coupon[index]["subtitle"],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Gap(0.7),
                                Row(
                                  children: [
                                    Text(
                                      coupon[index]["thirdline"],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      size: 12.sp,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            leading: CachedNetworkImage(
                              width: 17.w,
                              imageUrl: coupon[index]["imgUrl"],
                              fit: BoxFit.fitWidth,
                            ),
                            isThreeLine: true,
                          ),
                        )),
                Gap(2.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
