import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:groccery_app/widget/popular_section.dart';
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
      "title": "Mangoes",
      "description": "₹160/kg",
      "imgUrl":
          "https://media.istockphoto.com/id/641924940/photo/mangoes-composition-background.jpg?s=612x612&w=0&k=20&c=N60vzAI16zJxKZC2Gm7O_xrLUduBIsKEhJg-73_1jSU=",
    },
    {
      "title": "Mangoes",
      "description": "₹160/kg",
      "imgUrl":
          "https://media.istockphoto.com/id/641924940/photo/mangoes-composition-background.jpg?s=612x612&w=0&k=20&c=N60vzAI16zJxKZC2Gm7O_xrLUduBIsKEhJg-73_1jSU=",
    },
    {
      "title": "Mangoes",
      "description": "₹160/kg",
      "imgUrl":
          "https://media.istockphoto.com/id/641924940/photo/mangoes-composition-background.jpg?s=612x612&w=0&k=20&c=N60vzAI16zJxKZC2Gm7O_xrLUduBIsKEhJg-73_1jSU=",
    },
    {
      "title": "Mangoes",
      "description": "₹160/kg",
      "imgUrl":
          "https://media.istockphoto.com/id/641924940/photo/mangoes-composition-background.jpg?s=612x612&w=0&k=20&c=N60vzAI16zJxKZC2Gm7O_xrLUduBIsKEhJg-73_1jSU=",
    },
  ];

  FruitsPage({super.key});

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
              Gap(2.h),
              SizedBox(
                height: 100.h,
                width: 100.h,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: fruits.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 285,
                        crossAxisCount: 2,
                        mainAxisSpacing: 10.sp,
                        crossAxisSpacing: 15.sp),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.sp),
                        child: PopularSection(
                          salaar: false,
                          title: fruits[index]["title"],
                          description: fruits[index]["description"],
                          imgUrl: fruits[index]["imgUrl"],
                          favouriteIcon: Icon(
                            Icons.favorite_outline,
                            size: 19.sp,
                            color: Colors.black,
                          ),
                        ),
                      );
                    }),
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
      ),
    );
  }
}
