import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:groccery_app/widget/mart_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:groccery_app/widget/category_card.dart';
import 'package:groccery_app/widget/header_widget.dart';
import 'package:groccery_app/widget/popular_section.dart';
import 'package:groccery_app/widget/home_page_banner.dart';
import 'package:groccery_app/widget/searchbar_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MartPage extends StatefulWidget {
  @override
  State<MartPage> createState() => _MartPageState();
}

class _MartPageState extends State<MartPage> {
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

  List<Map<String, dynamic>> CardList = [
    {
      "title": "Groccery & Essential ",
      "imgUrl":
          "https://www.pngall.com/wp-content/uploads/4/Grocery-PNG-HD-Quality.png",
    },
    {
      "title": "Meat & Fish",
      "imgUrl":
          "https://www.pikpng.com/pngl/b/35-355749_fish-and-meat-png-transparent-fish-and-meat.png",
    },
    {
      "title": "Pharmacy",
      "imgUrl":
          "https://clipart-library.com/images_k/pill-transparent-background/pill-transparent-background-16.png",
    },
    {
      "title": "Pet Suppli",
      "imgUrl":
          "https://earthwisepet.com/wp-content/uploads/2022/03/EarthWise-Pet-Supply-Dog-Food-and-Cat-food.png",
    },
    {
      "title": " Flowers",
      "imgUrl":
          "https://www.freepnglogos.com/uploads/flour-png/flour-flower-png-transparent-png-images-pluspng-2.png",
    },
    {
      "title": "Gifts",
      "imgUrl":
          "https://www.freepnglogos.com/uploads/gift-png/gift-present-prize-icon-24.png",
    },
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
      "title": "Snack Fresh Buy",
      "time": "18km|20 mins",
      "rating": "4.1",
      "imgUrl":
          "https://i.insider.com/5f3175424dca6804400b5667?width=600&format=jpeg&auto=webp"
    },
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                child: const HeaderWidget(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: const SearchbarWidget(),
              ),
              Gap(2.h),
              SizedBox(
                height: 31.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.w,
                  ),
                  child: GridView.builder(
                      itemCount: CardList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 8.sp,
                          mainAxisSpacing: 12.sp,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return CategoryCard(
                          title: CardList[index]["title"],
                          timing: CardList[index]["timing"],
                          imageUrl: CardList[index]["imgUrl"],
                          pushpa: false,
                          onTab: () {},
                        );
                      }),
                ),
              ),
              Gap(1.h),
              CarouselSlider.builder(
                itemCount: homebanner.length,
                itemBuilder: (context, index, realIndex) {
                  return HomePageBanner(
                    colors: homebanner[index]["color"],
                    off: homebanner[index]["off"],
                    imageUrl: homebanner[index]["imgUrl"],
                    positionedColor: homebanner[index]["positionedColor"],
                    discript: homebanner[index]["discript"],
                    kanmani: true,
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
              Align(
                alignment: Alignment.center,
                child: DotsIndicator(
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
              ),
              Gap(2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Text(
                  "Hot Deals",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
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
              Gap(3.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  children: [
                    Text(
                      "Popular Stores",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Text(
                      "78 Stores",
                      style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey),
                    ),
                    Gap(2.w),
                    CircleAvatar(
                      backgroundColor: const Color(0xFFf0f0f1),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 15.sp,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(2.5.h),
              ...List.generate(
                  martData.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MartWidget(
                            title: martData[index]["title"],
                            time: martData[index]["time"],
                            imgUrl: martData[index]["imgUrl"],
                            rating: martData[index]["rating"]),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
