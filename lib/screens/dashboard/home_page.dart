import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:groccery_app/widget/header_widget.dart';
import 'package:groccery_app/widget/category_card.dart';
import 'package:groccery_app/widget/popular_section.dart';
import 'package:groccery_app/widget/searchbar_widget.dart';
import 'package:groccery_app/widget/home_page_banner.dart';
import 'package:groccery_app/screens/dashboard/mart_page.dart';
import 'package:groccery_app/screens/dashboard/food_page.dart';
import 'package:groccery_app/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  int currentIndex = 0;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;
  List<Map<String, dynamic>> popularData = [
    {
      "title": "Momoz",
      "description": "Chinese|Thai|seafo..",
      "timing": "4.2|1km|28 MIns",
      "imgUrl":
          "https://cdn.foodaciously.com/static/recipes/ee9fd204-25cf-4e97-be5a-d7626470d420/easy-vegan-momos-recipe-7ab341154a5c13d6d9642300e7e2c92d-2560.jpg",
    },
    {
      "title": "Grill Chicken",
      "description": "Indian|Receipe|chick..",
      "timing": "4.5|3km|35 MIns",
      "imgUrl":
          "https://www.spiceindiaonline.com/wp-content/uploads/2021/05/Tandoori-Chicken-20.jpg",
    },
    {
      "title": "Mutton Chukka",
      "description": "Indian|Receipe|Mutto..",
      "timing": "4.6|2km|29 MIns",
      "imgUrl":
          "https://beta.theindianclaypot.com/content/images/wp-content/uploads/2019/07/mutton-chops.jpg",
    },
    {
      "title": "Chicken Burger",
      "description": "Indian|Receipe|Burger..",
      "timing": "4.5|5km|38 MIns",
      "imgUrl":
          "https://food-images.files.bbci.co.uk/food/recipes/air_fryer_cblt_burger_03517_16x9.jpg",
    }
  ];
  List<Map<String, dynamic>> popularDinein = [
    {
      "title": "House of common..",
      "description": "Italian|Continontal",
      "timing": "4.5|1km",
      "imgUrl":
          "https://t3.ftcdn.net/jpg/03/24/73/92/360_F_324739203_keeq8udvv0P2h1MLYJ0GLSlTBagoXS48.jpg",
    },
    {
      "title": "Goura Bar & Res..",
      "description": "Francis|Continontal",
      "timing": "4.3|3km",
      "imgUrl":
          "https://images.pexels.com/photos/941861/pexels-photo-941861.jpeg?cs=srgb&dl=pexels-chan-walrus-941861.jpg&fm=jpg",
    },
    {
      "title": "Swetha Restaurent &..",
      "description": "Indian|Continontal",
      "timing": "4.4|2km",
      "imgUrl":
          "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudHxlbnwwfHwwfHw%3D&w=1000&q=80",
    },
    {
      "title": "Nira Restaurant &..",
      "description": "Indian|Continental..",
      "timing": "4.5|5km",
      "imgUrl":
          "https://assets.architecturaldigest.in/photos/600835aed3054f83c2ded41f/16:9/w_1360,h_765,c_limit/Tre%CC%80sind-Inspire-BKC-Mumbai-main-1366x768.jpg",
    }
  ];
  List<Map<String, dynamic>> dealsonGrocery = [
    {
      "title": "Kellag's Crunchy fruit and nuit muesli",
      "description": "₹70/kg",
      "imgUrl":
          "https://ik.imagekit.io/wlfr/wellness/images/products/383549-7.jpg/tr:w-3840,dpr-1,c-at_max,cm-pad_resize,ar-1210-700,pr-true,f-webp,q-80,l-image,i-Wellness_logo_BDwqbQao9.png,lfo-bottom_right,w-200,h-90,c-at_least,cm-pad_resize,l-end",
    },
    {
      "title": "Lays Magic masala chips",
      "description": "₹170/kg ",
      "imgUrl":
          "https://www.lays.com/sites/lays.com/files/2020-11/Chedda-SC.jpg",
    },
    {
      "title": "Dark Chocklate More Sweet ",
      "description": "₹190/kg",
      "imgUrl":
          "https://kokomae.in/cdn/shop/files/1_090228b8-14a3-4271-921b-2651ea439369.jpg?v=1689014703",
    },
    {
      "title": "Dark Fantasy is more chocklate",
      "description": "₹160/kg",
      "imgUrl":
          "https://rukminim2.flixcart.com/image/850/1000/xif0q/cookie-biscuit/w/t/6/300-dark-fantasy-choco-creme-biscuit-1-sunfeast-original-imagsjzthpy9yczq.jpeg?q=20&crop=false",
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
      "discript": "Let's Start Order",
      "imgUrl": "https://www.pngmart.com/files/7/Groceries-PNG-HD.png",
      "color": [
        const Color(0xFFF7BAC5).withOpacity(0.1),
        const Color(0xFFF7BAC5)
      ],
      "positionedColor": const Color(0xFFF7BAC5).withOpacity(0.5),
    },
    {
      "off": "35% Off",
      "discript": "All Brands available",
      "imgUrl":
          "https://media.croma.com/image/upload/v1662703724/Croma%20Assets/Communication/Mobiles/Images/261934_qgssvy.png",
      "color": [
        const Color(0xFFCFAEF4).withOpacity(0.2),
        const Color(0xFFCFAEF4)
      ],
      "positionedColor": const Color(0xFFDDBEFF),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 3.w, right: 3.w, top: 3.h, bottom: 1.h),
              child: const HeaderWidget(),
            ),
            Gap(2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child:  SearchbarWidget(),
            ),
            Gap(2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: StaggeredGrid.count(
                crossAxisCount: 3,
                crossAxisSpacing: 7.sp,
                mainAxisSpacing: 7.sp,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.2,
                    child: CategoryCard(
                      title: "Food",
                      timing: "25 mins",
                      imageUrl:
                          "https://www.freepnglogos.com/uploads/burger-png/burger-png-png-images-yellow-images-12.png",
                      onTab: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DashBoardScreen(1)));
                      },
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.2,
                    child: CategoryCard(
                      title: "Mart",
                      timing: "25 mins",
                      imageUrl:
                          "https://www.pngplay.com/wp-content/uploads/7/Grocery-Transparent-PNG.png",
                      onTab: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DashBoardScreen(2)));
                      },
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.2,
                    child: CategoryCard(
                      title: "Courier",
                      timing: "30 mins",
                      imageUrl: "https://pngimg.com/d/box_PNG92.png",
                      onTab: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DashBoardScreen(4)));
                      },
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.2,
                    child: CategoryCard(
                      title: "Dine in",
                      timing: "No Waiting",
                      imageUrl:
                          "https://www.pngfind.com/pngs/b/569-5695753_dining-table-wooden-dining-table-design-with-glass.png",
                      onTab: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DashBoardScreen(3)));
                      },
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.2,
                    child: CategoryCard(
                      title: "Gold membership",
                      timing: "Free delivery can all order",
                      imageUrl:
                          "https://images.jdmagicbox.com/quickquotes/images_main/membership-card-2021435511-nvsf8jk6.png",
                      onTab: () {},
                    ),
                  ),
                ],
              ),
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
                    currentindex = index;
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
              position: currentindex,
            ),
            Gap(2.5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Popular Restaurants",
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
            Gap(2.5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Deals On Grocery",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  CircleAvatar(
                    backgroundColor: const Color(0xFFf0f0f1),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 15.sp,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Gap(1.h),
            SizedBox(
              height: 35.h,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                scrollDirection: Axis.horizontal,
                itemCount: dealsonGrocery.length,
                itemBuilder: (context, index) => PopularSection(
                  salaar: false,
                  title: dealsonGrocery[index]["title"],
                  description: dealsonGrocery[index]["description"],
                  imgUrl: dealsonGrocery[index]["imgUrl"],
                  favouriteIcon: Icon(
                    Icons.favorite_outline,
                    size: 19.sp,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Gap(2.5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Best To Dine-In",
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
                itemCount: popularDinein.length,
                itemBuilder: (context, index) => PopularSection(
                  salaar: true,
                  title: popularDinein[index]["title"],
                  description: popularDinein[index]["description"],
                  timing: popularDinein[index]["timing"],
                  imgUrl: popularDinein[index]["imgUrl"],
                  favouriteIcon: Icon(
                    Icons.favorite_outline,
                    size: 19.sp,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Gap(2.h),
          ],
        ),
      )),
    );
  }
}
