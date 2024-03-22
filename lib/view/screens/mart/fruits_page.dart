import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:groccery_app/view/widget/popular_section.dart';
// ignore_for_file: must_be_immutable

class FruitsPage extends StatelessWidget {
  List<Map<String, dynamic>> chiptext = [
    {"text": "All"},
    {"text": "Apple"},
    {"text": "Mangoes"},
    {"text": "Grapes"},
    {"text": "Papaya"},
    {"text": "Dragon Fruit"},
    {"text": "Strawberry"},
  ];
  List<Map<String, dynamic>> fruits = [
    {
      "title": "apple",
      "description": "₹70/kg",
      "imgUrl":
          "https://media.istockphoto.com/id/1473676063/photo/red-apples-on-the-market-stall.webp?b=1&s=170667a&w=0&k=20&c=25yQ_LAs2hj38E4-EOZ_FtBF3HERWQ-V-4ZNM0mayOI=",
    },
    {
      "title": "Orange",
      "description": "₹170/kg ",
      "imgUrl":
          "https://thumbs.dreamstime.com/b/orange-fruit-fresh-cutting-slicing-image-background-52381569.jpg",
    },
    {
      "title": "Grapes ",
      "description": "₹190/kg",
      "imgUrl":
          "https://www.thespruceeats.com/thmb/l1_lV7wgpqRArWBwpG3jzHih_e8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/what-are-grapes-5193263-hero-01-80564d77b6534aa8bfc34f378556e513.jpg",
    },
    {
      "title": "Mangoes",
      "description": "₹160/kg",
      "imgUrl":
          "https://media.istockphoto.com/id/641924940/photo/mangoes-composition-background.jpg?s=612x612&w=0&k=20&c=N60vzAI16zJxKZC2Gm7O_xrLUduBIsKEhJg-73_1jSU=",
    },
    {
      "title": "Bananas",
      "description": "₹160/kg",
      "imgUrl":
          "https://www.forbesindia.com/media/images/2022/Sep/img_193775_bananas.jpg",
    },
    {
      "title": "papaya",
      "description": "₹160/kg",
      "imgUrl":
          "https://www.stroke.org/-/media/Images/News/2023/October-2023/1013EIOLIPapaya_SC.jpg",
    },
    {
      "title": "Dragon Fruit",
      "description": "₹160/kg",
      "imgUrl":
          "https://media.post.rvohealth.io/wp-content/uploads/2024/01/A-pink-pitahaya-cut-it-in-half-Dragon-Fruit-thumbnail.jpg",
    },
    {
      "title": "WaterMelon",
      "description": "₹160/kg",
      "imgUrl":
          "https://assets-global.website-files.com/63ed08484c069d0492f5b0bc/654152ab447a269cd2b3b4e9_6373b362b83b3552c43c4bdc_633611cb47a532196afa9e97_watermelon-weight-loss-hero.jpeg",
    },
  ];

  FruitsPage({super.key});

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
            Gap(2.h),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Text(
                    "Fruits",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 20.sp,
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: CircleAvatar(
                      backgroundColor: const Color(0xFFf0f0f1),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search,
                              size: 17.sp, color: Colors.black))),
                )
              ],
            ),
            Gap(1.5.h),
            SizedBox(
              height: 5.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: chiptext.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Chip(
                          side: const BorderSide(color: Colors.grey),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
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
            Gap(1.sp),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: GridView.builder(
                    itemCount: fruits.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2 / 3,
                        crossAxisSpacing: 8.sp),
                    itemBuilder: (context, index) {
                      return PopularSection(
                        salaar: false,
                        pushpa: false,
                        title: fruits[index]["title"],
                        description: fruits[index]["description"],
                        imgUrl: fruits[index]["imgUrl"],
                        favouriteIcon: Icon(
                          Icons.favorite_outline,
                          size: 19.sp,
                          color: Colors.black,
                        ),
                      );
                    }),
              ),
            ),
            // ...List.generate(fruits.length, (index) {
            //   return PopularSection(
            //     salaar: false,
            //     title: fruits[index]["title"],
            //     description: fruits[index]["description"],
            //     imgUrl: fruits[index]["imgUrl"],
            //     favouriteIcon: Icon(
            //       Icons.favorite_outline,
            //       size: 19.sp,
            //       color: Colors.black,
            //     ),
            //   );
            // })
          ],
        ),
      ),
    );
  }
}
