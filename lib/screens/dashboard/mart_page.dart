import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/widget/category_card.dart';
import 'package:groccery_app/widget/header_widget.dart';
import 'package:groccery_app/widget/searchbar_widget.dart';

class MartPage extends StatelessWidget {
  List<Map<String, dynamic>> catogory = [
    {
      "title": "Mart",
      "imgUrl":
          "https://www.freepnglogos.com/uploads/burger-png/burger-png-png-images-yellow-images-12.png",
    },
    {
      "title": "Food",
      "imgUrl":
          "https://www.freepnglogos.com/uploads/burger-png/burger-png-png-images-yellow-images-12.png",
    },
    {
      "title": "Courier",
      "imgUrl":
          "https://www.freepnglogos.com/uploads/burger-png/burger-png-png-images-yellow-images-12.png",
    },
    {
      "title": "Shopping",
      "imgUrl":
          "https://www.freepnglogos.com/uploads/burger-png/burger-png-png-images-yellow-images-12.png",
    },
    {
      "title": "Dine in",
      "imgUrl":
          "https://www.freepnglogos.com/uploads/burger-png/burger-png-png-images-yellow-images-12.png",
    },
    {
      "title": "Gold Membership",
      "imgUrl":
          "https://www.freepnglogos.com/uploads/burger-png/burger-png-png-images-yellow-images-12.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
              child: HeaderWidget(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: SearchbarWidget(),
            ),
            Gap(2.h),
            SizedBox(
              height: 35.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.sp),
                child: GridView.builder(
                    itemCount: catogory.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 15.sp,
                        mainAxisSpacing: 25.sp,
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return const CategoryCard(
                        title: "Mart",
                        timing: "20 mins",
                        imageUrl:
                            "https://www.pngplay.com/wp-content/uploads/7/Grocery-Transparent-PNG.png",
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
