import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/widget/home_page_banner.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfilePage extends StatelessWidget {
  List<Map<String, dynamic>> profile = [
    {"text": "My Account", "icon": Icons.person_2_outlined},
    {
      "text": "My Order",
      "icon": Icons.shopping_bag_outlined,
    },
    {
      "text": "Payments",
      "icon": Icons.payment_outlined,
    },
    {
      "text": "Address",
      "icon": Icons.location_on_outlined,
    },
    {
      "text": "Favourites",
      "icon": Icons.favorite_outline,
    },
    {
      "text": "Promocodes",
      "icon": Icons.local_offer_outlined,
    },
    {
      "text": "Settings",
      "icon": Icons.settings_outlined,
    },
    {
      "text": "Help",
      "icon": Icons.help_outline_rounded,
    }
  ];

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 23.sp,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sow Mithran",
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "+91 4580694789",
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                CircleAvatar(
                  maxRadius: 25.sp,
                  backgroundColor: const Color(0xFFf0f0f1),
                  child: Icon(
                    Icons.person_2_outlined,
                    size: 25.sp,
                  ),
                ),
              ],
            ),
            Gap(2.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 1.5.w),
              padding: EdgeInsets.only(
                  top: 15.sp, left: 10.sp, bottom: 15.sp, right: 10.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: const Color(0xFFffeece)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gold Membership",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1c2440)),
                      ),
                      Gap(0.5.h),
                      Text(
                        "Free Delivery on all orders",
                        style: TextStyle(
                            color: const Color(0xFF1c2440),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Gap(0.9.h),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.sp),
                          color: const Color(0xFF1c2440),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 0.5.h),
                          child: Text(
                            "Knowmore",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                  CachedNetworkImage(
                      fit: BoxFit.contain,
                      height: 12.h,
                      imageUrl:
                          "https://cdn-icons-png.flaticon.com/512/2534/2534817.png")
                ],
              ),
            ),
            Gap(2.h),
            SizedBox(
              height: 60.h,
              child: ListView.builder(
                  itemCount: profile.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        profile[index]["icon"],
                        size: 20.sp,
                        color: Colors.black,
                      ),
                      title: Text(
                        profile[index]["text"],
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 14.sp,
                        color: Colors.black,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
