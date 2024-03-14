import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/widget/home_page_banner.dart';

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
             HomePageBanner(off: off, colors: colors, imageUrl: imageUrl, positionedColor: positionedColor, discript: discript, kanmani: kanmani)
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
                            fontSize: 15.sp,
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
            )
          ],
        ),
      ),
    );
  }
}
