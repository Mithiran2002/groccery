import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:groccery_app/widget/mart_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:groccery_app/widget/popular_section.dart';
import 'package:groccery_app/widget/home_page_banner.dart';
import 'package:groccery_app/widget/searchbar_widget.dart';
import 'package:groccery_app/screens/dashboard/all_stores.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:groccery_app/screens/dashboard/food_detail.dart';

class GrocceryPage extends StatefulWidget {
  const GrocceryPage({super.key});

  @override
  State<GrocceryPage> createState() => _GrocceryPageState();
}

class _GrocceryPageState extends State<GrocceryPage> {
  List<Map<String, dynamic>> foodCatogory = [
    {
      "title": "Fruits & Vegetables",
      "imgUrl":
          "https://www.freepnglogos.com/uploads/vegetables-png/vegetables-download-vegetable-photos-png-image-pngimg-3.png",
    },
    {
      "title": "Bread and Egg",
      "imgUrl":
          "https://harvestgold.in/image/ProductImage/818a8a255136cbe36165ad397ee9a2b4.png",
    },
    {
      "title": "Cereals and breakfast",
      "imgUrl":
          "https://www.pngall.com/wp-content/uploads/15/Cereal-PNG-Pic.webp",
    },
    {
      "title": "Chocklates & Deserts",
      "imgUrl":
          "https://static.vecteezy.com/system/resources/previews/031/112/836/original/ai-generated-chocolate-milk-drink-in-glass-transparent-background-free-png.png",
    },
    {
      "title": "Rava",
      "imgUrl":
          "https://5.imimg.com/data5/RF/WZ/ML/SELLER-13640528/star-idli-rava-500x500.png",
    },
    {
      "title": "Face Creams",
      "imgUrl": "https://ik.imagekit.io/jammi/img/Glow-1024x1024.png",
    },
  ];

  List<Map<String, dynamic>> catogory = [
    {
      "title": "Orgonic Atta",
      "imgUrl": "https://amulorganic.org/assets/res/amul_products2.png",
    },
    {
      "title": "Nuts & Spices",
      "imgUrl":
          "https://5.imimg.com/data5/SELLER/Default/2022/1/FF/JZ/IS/117140626/almond-500x500.png",
    },
    {
      "title": "Yippee Noodles",
      "imgUrl":
          "https://www.bigbasket.com/media/uploads/p/xxl/1201325-2_2-sunfeast-yippee-noodles-magic-masala.jpg",
    },
    {
      "title": "Maggie",
      "imgUrl":
          "https://i.pinimg.com/originals/d4/51/d1/d451d1608889338fbf7a190fd15423db.png",
    },
    {
      "title": "Paneer Butter Masala",
      "imgUrl":
          "https://assets-global.website-files.com/6305f7d600c9842969920a58/63ec99466497d41831454344_eCVSXogSApXQscf9GqoBYqpPFKCCQvv7XZXPAaS8NGg.png",
    },
    {
      "title": "Masalas",
      "imgUrl":
          "https://5.imimg.com/data5/SELLER/Default/2022/5/OE/HA/DY/310912/garam-masala-500x500.png",
    },
  ];
  List<Map<String, dynamic>> homebanner = [
    {
      "off": "25% Off",
      "discript": "Get to your home ",
      "imgUrl":
          "https://freepngimg.com/download/grocery/41640-8-groceries-images-free-hd-image.png",
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
      "discript": "All Pets available",
      "imgUrl":
          "https://clipart-library.com/new_gallery/141-1410760_pets-dog-and-cat-and-rabbit.png",
      "color": [
        const Color(0xFFCFAEF4).withOpacity(0.2),
        const Color(0xFFCFAEF4)
      ],
      "positionedColor": const Color(0xFFDDBEFF),
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
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 22.sp,
                    color: Colors.black,
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: Text(
                  "Groccery & Essential",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 22.sp),
                ),
              ),
              Gap(2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: SearchbarWidget(),
              ),
              Gap(2.h),
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
              Gap(2.h),
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
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AllStores()));
                            },
                            icon: Icon(Icons.arrow_forward,
                                size: 17.sp, color: Colors.black))),
                  ],
                ),
              ),
              ...List.generate(
                  martData.length,
                  (index) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
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
