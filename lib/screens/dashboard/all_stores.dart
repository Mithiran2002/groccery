import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/widget/mart_widget.dart';
import 'package:groccery_app/screens/dashboard/Reliance_smart.dart';

class AllStores extends StatelessWidget {
  List<Map<String, dynamic>> martData = [
    {
      "title": "Reliance Smart Buy",
      "time": "16km|20 mins",
      "rating": "4.5",
      "imgUrl":
          "https://www.shutterstock.com/image-photo/portrait-millennial-lady-holding-using-260nw-1917230564.jpg"
    },
    {
      "title": " Fresh  Mart",
      "time": "18km|20 mins",
      "rating": "4.8",
      "imgUrl":
          "https://media.istockphoto.com/id/1497211470/photo/black-woman-working-at-a-supermarket-arranging-carefully-the-tomato-display-at-the-produce.webp?b=1&s=170667a&w=0&k=20&c=-9vV_A0_2eNm1nxIy3YiJ2ontAdBzFkFVowvNFJYgPo="
    },
    {
      "title": "Forms Fresh",
      "time": "15km|20 mins",
      "rating": "4.4",
      "imgUrl":
          "https://static.toiimg.com/thumb/65532431.cms?width=1200&height=900"
    },
    {
      "title": "Super BUy",
      "time": "19km|18 mins",
      "rating": "4.5",
      "imgUrl":
          "https://i.insider.com/5f3175424dca6804400b5667?width=600&format=jpeg&auto=webp"
    },
    {
      "title": "Forms Things",
      "time": "14km|15 mins",
      "rating": "4.3",
      "imgUrl":
          "https://media.istockphoto.com/id/1159376906/photo/young-girl-choosing-vegetables-and-fruit-at-a-farmers-market-with-reusable-bag-plastic-free.jpg?s=612x612&w=0&k=20&c=LBXcBi9hv15KSQEo1uqmbJq53fDwV49nLEmUgw9L9wA="
    },
    {
      "title": "Greatest Buy",
      "time": "20km|16 mins",
      "rating": "4.3",
      "imgUrl":
          "https://media.istockphoto.com/id/1140835700/photo/woman-buying-fruits-at-the-farmers-market.jpg?s=612x612&w=0&k=20&c=mdU-9YGrsu1X96lfrDtT7qpy_6zlvpATccryfpYTzV4="
    },
    {
      "title": "Market Buy",
      "time": "22km|14 mins",
      "rating": "4.5",
      "imgUrl":
          "https://media.sciencephoto.com/c0/31/34/13/c0313413-800px-wm.jpg"
    },
    {
      "title": "Tutorion Box",
      "time": "13km|17 mins",
      "rating": "4.5",
      "imgUrl":
          "https://static.vecteezy.com/system/resources/previews/017/093/385/non_2x/caucasian-girl-buying-fresh-vegetables-food-products-at-the-market-photo.jpg"
    },
    {
      "title": "Groccery Mart",
      "time": "11km|10 mins",
      "rating": "4.3",
      "imgUrl": "https://s3.envato.com/files/409679508/700_9416.jpg"
    },
    {
      "title": "Super Market",
      "time": "14km|20 mins",
      "rating": "4.7",
      "imgUrl":
          "https://plus.unsplash.com/premium_photo-1683147709907-4348f2d7f56d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "title": "Things More",
      "time": "15km|15 mins",
      "rating": "4.8",
      "imgUrl":
          "https://previews.123rf.com/images/nd3000/nd30001711/nd3000171100434/89081071-picture-of-woman-at-marketplace-buying-fruits.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  CircleAvatar(
                    backgroundColor: Color(0xFFf0f0f1),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 18.sp,
                    ),
                  )
                ],
              ),
            ),
            Gap(1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "All Details",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    "120 Stores",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Gap(1.h),
            ...List.generate(
                martData.length,
                (index) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RelianceSmart()));
                        },
                        child: MartWidget(
                            title: martData[index]["title"],
                            time: martData[index]["time"],
                            imgUrl: martData[index]["imgUrl"],
                            rating: martData[index]["rating"]),
                      ),
                    ))
          ],
        ),
      ),
    ));
  }
}
