import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/widget/searchbar_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:groccery_app/screens/dashboard/food_detail.dart';

class SearchbarPage extends StatelessWidget {
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
  List<Map<String, dynamic>> list = [
    {
      "title": "Paneer Momoz",
    },
    {
      "title": "BabyCorn Manjuriyan",
    },
    {
      "title": "chicken burger",
    },
    {
      "title": "Tandoori",
    },
  ];
  List<Map<String, dynamic>> recent = [
    {
      "title": "Hyderabadi Biriyani",
    },
    {
      "title": "Cheese Pizza",
    },
    {
      "title": "Grill Chicken",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
              Gap(2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: SearchbarWidget(
                  search: false,
                ),
              ),
              Gap(2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Text(
                  "Top Catogories",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 17.sp),
                ),
              ),
              Gap(1.5.h),
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
                        padding: EdgeInsets.symmetric(horizontal: 5.sp),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => FoodDetailPage()));
                              },
                              child: CircleAvatar(
                                maxRadius: 24.sp,
                                backgroundColor: const Color(0xFFf0f0f1),
                                child: CachedNetworkImage(
                                    fit: BoxFit.contain,
                                    height: 6.h,
                                    imageUrl: foodCatogory[index]["imgUrl"]),
                              ),
                            ),
                            Gap(1.h),
                            SizedBox(
                              width: 15.w,
                              child: Text(
                                foodCatogory[index]["title"],
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Text(
                  "Top Dishes",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 17.sp),
                ),
              ),
              Gap(1.h),
              ...List.generate(
                  list.length,
                  (index) => ListTile(
                        leading: Icon(
                          Icons.search_outlined,
                          size: 17.sp,
                          color: Colors.black,
                        ),
                        title: Text(
                          list[index]["title"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
              Gap(1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Text(
                      "Recent Searches",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 17.sp),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Text(
                      "Clear all",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              Gap(1.h),
              ...List.generate(
                  recent.length,
                  (index) => ListTile(
                        leading: Icon(
                          Icons.timelapse_outlined,
                          size: 17.sp,
                        ),
                        title: Text(
                          recent[index]["title"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Icon(
                          Icons.cancel_outlined,
                          size: 17.sp,
                          color: Colors.black,
                        ),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
