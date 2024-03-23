import 'dart:convert';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:groccery_app/utils/constants.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:groccery_app/model/recipe_model.dart';
import 'package:groccery_app/service/api_service.dart';
import 'package:groccery_app/view/widget/header_widget.dart';
import 'package:groccery_app/view/widget/popular_section.dart';
import 'package:groccery_app/view/widget/home_page_banner.dart';
import 'package:groccery_app/view/widget/searchbar_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:groccery_app/view/screens/food/food_detail.dart';
import 'package:groccery_app/view/screens/food/restaurant_page.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreen();
}

class _FoodScreen extends State<FoodScreen> {
  List<Recipe>? recipesList = [];
  List<Recipe>? foodlist = [];

  Future<void> getFoodProductList() async {
    try {
      Map<String, dynamic> _response =
          await ApiService.get(slug: ApiConstants.RECIPE_ENDPOINT);

      List<Recipe> testapi =
          List<Map<String, dynamic>>.from(_response['recipes']).map(
        (item) {
          return Recipe.fromJson(item);
        },
      ).toList();
      setState(() {
        recipesList = testapi;
        foodlist = testapi.reversed.toList();
      });
      logger.i(recipesList!.length);
    } catch (e) {}
  }

  @override
  void initState() {
    super.initState();
    getFoodProductList();
  }

  List<Map<String, dynamic>> homebanner = [
    {
      "off": "25% Off",
      "discript": "On Oil food order",
      "imgUrl":
          "https://www.pngkit.com/png/full/54-545849_dinner-food-png-freeuse-stock-plate-of-food.png",
      "color": [const Color(0xFFfff3d6), const Color(0xFFffd89f)],
      "positionedColor": const Color(0xFFffebcd),
    },
    {
      "off": "30% Off",
      "discript": "Let's order youre food",
      "imgUrl": "https://freepngimg.com/thumb/pizza/8-2-pizza-png-hd.png",
      "color": [
        const Color(0xFFF7BAC5).withOpacity(0.1),
        const Color(0xFFF7BAC5)
      ],
      "positionedColor": const Color(0xFFF7BAC5).withOpacity(0.5),
    },
    {
      "off": "35% Off",
      "discript": "Tast Burgers here",
      "imgUrl":
          "https://static.vecteezy.com/system/resources/thumbnails/025/065/315/small/fast-food-meal-with-ai-generated-free-png.png",
      "color": [
        const Color(0xFFCFAEF4).withOpacity(0.2),
        const Color(0xFFCFAEF4)
      ],
      "positionedColor": const Color(0xFFDDBEFF),
    }
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          backgroundColor: const Color(0xFFe6470a),
          color: Colors.white,
          onRefresh: () async => await getFoodProductList(),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.sp),
                  child: HeaderWidget(),
                ),
                Gap(1.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: const SearchbarWidget(),
                ),
                Gap(2.h),
                SizedBox(
                  height: 15.h,
                  child: ListView.builder(
                      padding: EdgeInsets.only(
                        left: 3.w,
                      ),
                      itemCount: recipesList!.length,
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
                                  backgroundImage: CachedNetworkImageProvider(
                                      recipesList![index].image.toString()),
                                  // child: CachedNetworkImage(
                                  //     fit: BoxFit.cover,
                                  //     imageUrl:
                                  //         recipesList![index].image.toString()),
                                ),
                              ),
                              Gap(1.h),
                              SizedBox(
                                width: 14.w,
                                child: Text(
                                  recipesList![index].name.toString(),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                Gap(2.h),
                SizedBox(
                  height: 15.h,
                  child: ListView.builder(
                      padding: EdgeInsets.only(
                        left: 3.w,
                      ),
                      itemCount: foodlist!.length,
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
                                  backgroundImage: CachedNetworkImageProvider(
                                      foodlist![index].image.toString()),
                                ),
                              ),
                              Gap(1.h),
                              SizedBox(
                                width: 14.w,
                                child: Text(
                                  foodlist![index].name.toString(),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Gap(2.h),
                CarouselSlider.builder(
                  itemCount: homebanner.length,
                  itemBuilder: (context, index, realIndex) {
                    return HomePageBanner(
                      colors: homebanner[index]["color"],
                      off: homebanner[index]["off"],
                      imageUrl: homebanner[index]["imgUrl"],
                      positionedColor: homebanner[index]["positionedColor"],
                      discript: homebanner[index]["discript"],
                      kanmani: false,
                    );
                  },
                  options: CarouselOptions(
                    autoPlayCurve: Curves.easeInOutCubic,
                    height: 18.h,
                    viewportFraction: 0.95,
                    initialPage: 0,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
                Gap(1.h),
                DotsIndicator(
                  decorator: DotsDecorator(
                      spacing: EdgeInsets.only(right: 5.sp),
                      activeColor: const Color(0xFF1c2440),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.sp)),
                      size: Size(5.sp, 3.sp),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.sp)),
                      activeSize: Size(15.sp, 4.sp)),
                  dotsCount: 3,
                  position: currentIndex,
                ),
                Gap(2.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Top Rated Restaurants",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                  ),
                ),
                Gap(1.h),
                SizedBox(
                  height: 35.h,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    scrollDirection: Axis.horizontal,
                    itemCount: foodlist!.length,
                    itemBuilder: (context, index) => PopularSection(
                      salaar: true,
                      title: foodlist![index].name.toString(),
                      description: foodlist![index].mealType.toString(),
                      timing: foodlist![index].cookTimeMinutes.toString(),
                      imgUrl: foodlist![index].image.toString(),
                      favouriteIcon: Icon(
                        Icons.favorite_outline,
                        size: 19.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Gap(2.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Restaurants To Explore",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                  ),
                ),
                Gap(1.h),
                ...List.generate(
                  recipesList!.length,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RestaurantPage(
                                    id: recipesList![index].id,
                                  )));
                        },
                        child: PopularSection(
                          salaar: true,
                          rrr: false,
                          rating: recipesList![index].rating.toString(),
                          exploreTimings:
                              recipesList![index].prepTimeMinutes.toString(),
                          title: recipesList![index].name.toString(),
                          description:
                              recipesList![index].instructions.toString(),
                          timing:
                              recipesList![index].cookTimeMinutes.toString(),
                          imgUrl: recipesList![index].image.toString(),
                          favouriteIcon: Icon(
                            Icons.favorite_outline,
                            size: 19.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Gap(2.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
