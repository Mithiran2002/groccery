import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FoodDetailPage extends StatelessWidget {
  List<Map<String, dynamic>> chiptext = [
    {"text": "Sort by"},
    {"text": "Pure Veg"},
    {"text": "Free Delivery"},
    {"text": "Non Veg"},
    {"text": "Snacks"},
    {"text": "Coffes"},
    {"text": "Payments"},
  ];
  List<Map<String, dynamic>> foodCatogory = [
    {
      "title": "Pizza",
      "imgUrl":
          "https://static.vecteezy.com/system/resources/previews/021/311/734/original/pizza-transparent-background-png.png",
    },
    {
      "title": "Burger",
      "imgUrl":
          "https://static.vecteezy.com/system/resources/previews/021/952/459/original/free-tasty-hamburger-on-transparent-background-free-png.png",
    },
    {
      "title": "Pasta",
      "imgUrl":
          "https://static.vecteezy.com/system/resources/previews/027/297/786/original/spaghetti-with-tomato-sauce-and-basil-in-a-plate-isolated-on-white-transparent-background-ai-generate-png.png",
    },
    {
      "title": "Chicken Lollipop",
      "imgUrl":
          "https://flybuy.in/wp-content/uploads/2020/03/kisspng-fried-chicken-chicken-lollipop-biryani-buffalo-win-bubbles-chicken-lollipop-foodwifi-5c6b1e5603c478.5773671215505239900154.png",
    },
    {
      "title": "cheese Burger",
      "imgUrl":
          "https://upload.wikimedia.org/wikipedia/commons/1/11/Cheeseburger.png",
    },
    {
      "title": "Chicken 65",
      "imgUrl":
          "https://b.zmtcdn.com/data/pictures/2/20605842/ac47b1d6f2cb48f49ebef318c2f79bf5.png?fit=around|960:500&crop=960:500;*,*",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Text(
              "Biriyani",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 25.sp),
            ),
          ),
          Gap(1.h),
          SizedBox(
            height: 5.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: chiptext.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Chip(
                        side: BorderSide(color: Colors.grey),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.sp)),
                        label: Text(
                          chiptext[index]["text"],
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )),
                  );
                }),
          ),
          Gap(3.h),
          SizedBox(
            height: 15.h,
            child: ListView.builder(
                padding: EdgeInsets.only(
                  left: 3.w,
                ),
                itemCount: foodCatogory.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 24.sp,
                          backgroundColor: const Color(0xFFf0f0f1),
                          child: CachedNetworkImage(
                              fit: BoxFit.contain,
                              height: 6.h,
                              imageUrl: foodCatogory[index]["imgUrl"]),
                        ),
                        Gap(1.h),
                        // DefaultTabController(
                        //     length: 5,
                        //     child: TabBar(tabs: [
                        //       Tab(
                        //         child: Text("All"),
                        //       ),
                        //       Tab(
                        //         child: Text("chicken"),
                        //       ),
                        //       Tab(
                        //         child: Text("Mutton"),
                        //       ),
                        //       Tab(
                        //         child: Text("Tandoori"),
                        //       ),
                        //       Tab(
                        //         child: Text("Bread Halwa"),
                        //       ),
                        //     ])),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
