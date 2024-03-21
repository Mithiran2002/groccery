import 'dart:math';
import 'dart:convert';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:groccery_app/utils/constants.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:groccery_app/model/recipe_model.dart';
import 'package:groccery_app/view/widget/header_widget.dart';
import 'package:groccery_app/view/widget/popular_section.dart';
import 'package:groccery_app/view/widget/home_page_banner.dart';
import 'package:groccery_app/view/widget/searchbar_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:groccery_app/view/screens/home/food_detail.dart';
import 'package:groccery_app/view/screens/home/restaurant_page.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _ListPage();
}

class _ListPage extends State<FoodScreen> {
  List<Recipe>? recipesList = [];
  Future<void> fetchAlbum() async {
    try {
      var response = await http.get(Uri.parse('https://dummyjson.com/recipes'));
      // logger.e('Response status code: ${response.statusCode}');
      logger.w('Response body: ${response.body}');
      if (response.statusCode == 200) {
        Map<String, dynamic> _result = jsonDecode(response.body);

        List<Recipe> dummyrecipeslist =
            List<Map<String, dynamic>>.from(_result['recipes']).map((item) {
          return Recipe.fromJson(item);
        }).toList();
        // logger.e(dummyrecipeslist.length);
        setState(() {
          recipesList = dummyrecipeslist;
        });

        logger.e('First product details: ${recipesList!.length}');
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchAlbum();
  }

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
  List<Map<String, dynamic>> catogory = [
    {
      "title": "Biriyani",
      "imgUrl":
          "https://static.vecteezy.com/system/resources/previews/027/144/452/non_2x/delicious-chicken-biryani-isolated-on-transparent-background-png.png",
    },
    {
      "title": "Parotta",
      "imgUrl":
          "https://itsbenlifestyle.com/cdn/shop/products/Pu6OdE1nLw.png?v=1701870502",
    },
    {
      "title": "Meals",
      "imgUrl":
          "https://i.pinimg.com/originals/6b/3b/6a/6b3b6a6468763725fb1f2672d63bb03a.png",
    },
    {
      "title": "Tandoori",
      "imgUrl":
          "https://static.vecteezy.com/system/resources/previews/027/144/459/original/tasty-chicken-tandoori-isolated-on-background-free-png.png",
    },
    {
      "title": "Mutton",
      "imgUrl":
          "https://assets-global.website-files.com/6305f7d600c9842969920a58/63ec99466497d41831454344_eCVSXogSApXQscf9GqoBYqpPFKCCQvv7XZXPAaS8NGg.png",
    },
    {
      "title": "Paneer Masala",
      "imgUrl":
          "https://assets-global.website-files.com/6305f7d600c9842969920a58/63c77da4294077e86c126f1e_O_ZzNK9FqpGHZE-SxZosKUOvr-Y-0Zi0or5TzEwojGE.png",
    },
  ];
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
  List<Map<String, dynamic>> popularData = [
    {
      "title": "Pizza",
      "description": "Chinese|Thai|seafoods|Indian",
      "timing": "4.5|4km|30 MIns",
      "exploretiming": "3.5|1km|25 min",
      "imgUrl":
          "https://thumbs.dreamstime.com/b/pizza-rustic-italian-mozzarella-cheese-basil-leaves-35669930.jpg",
    },
    {
      "title": "Cheese Burger",
      "description": "Indian|Receipe|chick",
      "timing": "4.6|5km|35 MIns",
      "exploretiming": "3.7|1km|27 min",
      "imgUrl":
          "https://www.kitchensanctuary.com/wp-content/uploads/2021/05/Double-Cheeseburger-square-FS-42-500x500.jpg",
    },
    {
      "title": "Mutton Chukka",
      "description": "Indian|Receipe|Mutto",
      "timing": "4.3|3km|25 MIns",
      "exploretiming": "4.2|1km|29 min",
      "imgUrl":
          "https://beta.theindianclaypot.com/content/images/wp-content/uploads/2019/07/mutton-chops.jpg",
    },
    {
      "title": "Chicken Biriyani",
      "description": "Indian|Receipe|Biriyani",
      "timing": "4.5|2km|30 MIns",
      "exploretiming": "3.2|1km|27 min",
      "imgUrl":
          "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-biryani-awadhi-01.jpg",
    }
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          backgroundColor: Color(0xFFe6470a),
          color: Colors.white,
          onRefresh: () async => await fetchAlbum(),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.sp),
                  child: const HeaderWidget(),
                ),
                Gap(1.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: SearchbarWidget(),
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
                                  child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      height: 5.h,
                                      imageUrl:
                                          recipesList![index].image.toString()),
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
                Gap(2.h),
                SizedBox(
                  height: 15.h,
                  child: ListView.builder(
                      padding: EdgeInsets.only(
                        left: 3.w,
                      ),
                      itemCount: catogory.length,
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
                                      imageUrl: catogory[index]["imgUrl"]),
                                ),
                              ),
                              Gap(1.h),
                              SizedBox(
                                width: 15.w,
                                child: Text(
                                  catogory[index]["title"],
                                  maxLines: 2,
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
                    itemCount: popularData.length,
                    itemBuilder: (context, index) => PopularSection(
                      salaar: true,
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
                              builder: (context) => RestaurantPage()));
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