import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:groccery_app/view/widget/popular_section.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FoodDetailPage extends StatefulWidget {
  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage>
    with SingleTickerProviderStateMixin {
  int tabIndex = 0;
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 7);
    super.initState();
  }

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
      "title": "Chicken Biriyani",
      "imgUrl":
          "https://static.vecteezy.com/system/resources/previews/025/139/317/original/exquisite-chicken-biryani-with-earthen-pot-background-removed-for-maximum-impact-png.png",
    },
    {
      "title": "Mutton Biriyani",
      "imgUrl":
          "https://lattubiryani.com/wp-content/uploads/2020/08/multani-mitti.png",
    },
    {
      "title": "Prawn Biriyani",
      "imgUrl":
          "https://b.zmtcdn.com/data/dish_photos/27b/5eb8b7a8f2f15e2d13f784732d91527b.png",
    },
    {
      "title": "Fish Biriyani",
      "imgUrl": "https://www.pngkey.com/png/full/402-4022713_fish-biryani.png",
    },
    {
      "title": "Veg Biriyani",
      "imgUrl": "https://www.acebiryani.co.nz/assets/img/Vegetable-Biryani.png",
    },
    {
      "title": "Mushroom Biriyani",
      "imgUrl":
          "https://urbantiffin.shop/cdn/shop/products/mushroomdrawing.png?v=1650287319",
    },
  ];
  List<Map<String, dynamic>> popularData = [
    {
      "title": "Chicken Biriyani",
      "description": "indian|chicken||Indian",
      "timing": "4.5|4km|30 MIns",
      "exploretiming": "3.5|1km|25 min",
      "imgUrl":
          "https://recipes.net/wp-content/uploads/2023/05/air-fryer-chicken-biryani-recipe_6968eb6ab4a5ae22d136dab86c9ea8af.jpeg",
    },
    {
      "title": "Mutton Biriyani",
      "description": "Indian|Receipe|mutton",
      "timing": "4.6|5km|35 MIns",
      "exploretiming": "3.7|1km|27 min",
      "imgUrl":
          "https://www.masala.tv/wp-content/uploads/2021/05/mutton-biryanii.jpg",
    },
    {
      "title": "Prawn Biriyani",
      "description": "Indian|Receipe|prawn",
      "timing": "4.3|3km|25 MIns",
      "exploretiming": "4.2|1km|29 min",
      "imgUrl":
          "https://feed-your-sole.com/wp-content/uploads/2020/07/King-Prawn-Biryani.png",
    },
    {
      "title": "Veg Biriyani",
      "description": "Indian|Receipe|Biriyani",
      "timing": "4.5|2km|30 MIns",
      "exploretiming": "3.2|1km|27 min",
      "imgUrl":
          "https://madhurasrecipe.com/wp-content/uploads/2023/03/Veg-Biryani-Featured.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 7,
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
              padding: EdgeInsets.symmetric(horizontal: 2.w),
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
              height: 10.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: chiptext.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Chip(
                          side: BorderSide(color: Colors.grey),
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
            Gap(1.h),
            Container(
              height: 10.h,
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
                            backgroundColor: Color(0xFFf0f0f1),
                            child: CachedNetworkImage(
                                fit: BoxFit.contain,
                                height: 6.h,
                                imageUrl: foodCatogory[index]["imgUrl"]),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Gap(1.h),
            TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              indicatorColor: Colors.black,
              controller: _tabController,
              tabs: [
                Text(
                  "All",
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                Text("Chicken",
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                Text("Mutton",
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
                Text("Meals",
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
                Text(" Non veg",
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
                Text(" Non veg",
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
                Text(" Non veg",
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            Gap(1.h),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                      itemCount: popularData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: PopularSection(
                            salaar: true,
                            rrr: false,
                            rating: '4.1',
                            exploreTimings: popularData[index]["exploretiming"],
                            title: popularData[index]["title"],
                            description: popularData[index]["description"],
                            timing: popularData[index]["timing"],
                            imgUrl: popularData[index]["imgUrl"],
                            favouriteIcon: Icon(
                              Icons.favorite_outline,
                              size: 19.sp,
                              color: Colors.black,
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      itemCount: popularData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: PopularSection(
                            salaar: true,
                            rrr: false,
                            rating: '4.1',
                            exploreTimings: popularData[index]["exploretiming"],
                            title: popularData[index]["title"],
                            description: popularData[index]["description"],
                            timing: popularData[index]["timing"],
                            imgUrl: popularData[index]["imgUrl"],
                            favouriteIcon: Icon(
                              Icons.favorite_outline,
                              size: 19.sp,
                              color: Colors.black,
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      itemCount: popularData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: PopularSection(
                            salaar: true,
                            rrr: false,
                            rating: '4.1',
                            exploreTimings: popularData[index]["exploretiming"],
                            title: popularData[index]["title"],
                            description: popularData[index]["description"],
                            timing: popularData[index]["timing"],
                            imgUrl: popularData[index]["imgUrl"],
                            favouriteIcon: Icon(
                              Icons.favorite_outline,
                              size: 19.sp,
                              color: Colors.black,
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      itemCount: popularData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: PopularSection(
                            salaar: true,
                            rrr: false,
                            rating: '4.1',
                            exploreTimings: popularData[index]["exploretiming"],
                            title: popularData[index]["title"],
                            description: popularData[index]["description"],
                            timing: popularData[index]["timing"],
                            imgUrl: popularData[index]["imgUrl"],
                            favouriteIcon: Icon(
                              Icons.favorite_outline,
                              size: 19.sp,
                              color: Colors.black,
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      itemCount: popularData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: PopularSection(
                            salaar: true,
                            rrr: false,
                            rating: '4.1',
                            exploreTimings: popularData[index]["exploretiming"],
                            title: popularData[index]["title"],
                            description: popularData[index]["description"],
                            timing: popularData[index]["timing"],
                            imgUrl: popularData[index]["imgUrl"],
                            favouriteIcon: Icon(
                              Icons.favorite_outline,
                              size: 19.sp,
                              color: Colors.black,
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      itemCount: popularData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: PopularSection(
                            salaar: true,
                            rrr: false,
                            rating: '4.1',
                            exploreTimings: popularData[index]["exploretiming"],
                            title: popularData[index]["title"],
                            description: popularData[index]["description"],
                            timing: popularData[index]["timing"],
                            imgUrl: popularData[index]["imgUrl"],
                            favouriteIcon: Icon(
                              Icons.favorite_outline,
                              size: 19.sp,
                              color: Colors.black,
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      itemCount: popularData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: PopularSection(
                            salaar: true,
                            rrr: false,
                            rating: '4.1',
                            exploreTimings: popularData[index]["exploretiming"],
                            title: popularData[index]["title"],
                            description: popularData[index]["description"],
                            timing: popularData[index]["timing"],
                            imgUrl: popularData[index]["imgUrl"],
                            favouriteIcon: Icon(
                              Icons.favorite_outline,
                              size: 19.sp,
                              color: Colors.black,
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
