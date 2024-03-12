import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:groccery_app/widget/places_Widget.dart';
import 'package:groccery_app/widget/dinein_widget.dart';
import 'package:groccery_app/widget/header_widget.dart';
import 'package:groccery_app/widget/popular_section.dart';
import 'package:groccery_app/widget/searchbar_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DineInPage extends StatefulWidget {
  const DineInPage({super.key});

  @override
  State<DineInPage> createState() => _DineInPageState();
}

List<Map<String, dynamic>> dineCart = [
  {
    "title": "Pure Veg",
    "imgUrl":
        "https://t4.ftcdn.net/jpg/02/75/39/23/360_F_275392381_9upAWW5Rdsa4UE0CV6gRu2CwUETjzbKy.jpg"
  },
  {
    "title": "Non Veg",
    "imgUrl":
        "https://t4.ftcdn.net/jpg/01/87/57/33/360_F_187573358_rIkruVJ7wUCA8FYxonKMkLOK0WaE9bQq.jpg",
  },
  {
    "title": "Roof Top",
    "imgUrl":
        "https://media.istockphoto.com/id/524774937/photo/roof-terrace-with-hammock-on-a-sunny-day.jpg?s=612x612&w=0&k=20&c=OcYfFGAL-HGXOL0I5hDPzwI5CZz0FaEJby-yA-RdSno="
  },
  {
    "title": "Buffet",
    "imgUrl":
        "https://previews.123rf.com/images/since1985/since19851501/since1985150100070/35465337-buffet-restaurant-the-hotel-restaurant.jpg"
  },
  {
    "title": "Romantic",
    "imgUrl":
        "https://media.istockphoto.com/id/827135348/photo/bottle-of-champagne-in-bed.jpg?s=612x612&w=0&k=20&c=u6Q1-IF9RxcwLvWWnrMfv7FRjcY6Q5pY5b51-wGOqH0="
  },
  {
    "title": "Pubs & Bars",
    "imgUrl":
        "https://images.pexels.com/photos/331107/pexels-photo-331107.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
  },
  {
    "title": "Outdoor",
    "imgUrl":
        "https://media.istockphoto.com/id/503016934/photo/entrance-of-luxury-hotel.jpg?s=612x612&w=0&k=20&c=DXFzucB2xWGf3PI6_yjhLKDvrFcGlOpOjXh6KDI8rqU="
  },
  {
    "title": "premium",
    "imgUrl":
        "https://media.istockphoto.com/id/1452529483/photo/3d-render-of-luxury-hotel-room.webp?b=1&s=170667a&w=0&k=20&c=u8emlx6KguYJGU4jZFRwGx9KAxOzWLmEBdIJIj1DAdQ="
  },
];
List<Map<String, dynamic>> dinecategory = [
  {
    "first": "10 New",
    "secound": "Popular Cafes",
    "imgUrl":
        "https://www.girlwiththepassport.com/wp-content/uploads/2019/08/La-Rotonde.jpg"
  },
  {
    "first": "8 New",
    "secound": "hotels here",
    "imgUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMbY4j6Yc8DrEOo_8zF4T3dGhA3fkJE1aEXQ&usqp=CAU"
  },
  {
    "first": "5 New",
    "secound": "Bars & rooms",
    "imgUrl":
        "https://res.cloudinary.com/eggersmann-usa/w_auto,dpr_auto,q_auto,f_auto/auto-mapping-folder/2023/07/eggersmann-exotic-wood-bar-room-custom.jpg"
  },
  {
    "first": "6 New",
    "secound": "Premium Rooms",
    "imgUrl":
        "https://img.freepik.com/free-photo/3d-rendering-modern-luxury-hotel-office-reception-meeting-lounge_105762-2045.jpg?size=626&ext=jpg&ga=GA1.1.1395880969.1710201600&semt=ais"
  },
];
List<Map<String, dynamic>> popularData = [
  {
    "title": "Stories Brewery & Kitchen",
    "description": "North indian|Contenantial",
    "timing": "4.5|4km|30 MIns",
    "exploretiming": "3.5|1km|25 min",
    "imgUrl":
        "https://images.pexels.com/photos/1001965/pexels-photo-1001965.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  },
  {
    "title": "Luxury Hotel",
    "description": "Indian|Contenantial",
    "timing": "4.6|5km|35 MIns",
    "exploretiming": "3.7|1km|27 min",
    "imgUrl":
        "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202109/PG-24-25-Spice-September-2021-.jpg?size=690:388",
  },
  {
    "title": "Royal Rooms Here",
    "description": "Indian|Contenantial",
    "timing": "4.3|3km|25 MIns",
    "exploretiming": "4.2|1km|29 min",
    "imgUrl":
        "https://www.travelplusstyle.com/wp-content/uploads/2016/01/sonevajani-1880.jpg",
  },
  {
    "title": "Luxury Budget Rooms",
    "description": " North Indian|Contenantial",
    "timing": "4.5|2km|30 MIns",
    "exploretiming": "3.2|1km|27 min",
    "imgUrl":
        "https://www.jaypeehotels.com/webroot/uploads/jaypee-luxery-hotel-in-delhi/assets/images/banner-js1.jpg",
  }
];

class _DineInPageState extends State<DineInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
                height: 28.h,
                child: GridView.builder(
                    itemCount: dineCart.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10.sp,
                        crossAxisSpacing: 1.sp),
                    itemBuilder: (context, index) {
                      return DineInWidget(
                        title: dineCart[index]["title"],
                        imgUrl: dineCart[index]["imgUrl"],
                      );
                    }),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                margin: EdgeInsets.only(left: 10.sp, right: 10.sp),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.black,
                        ]),
                    borderRadius: BorderRadius.circular(10.sp),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                            "https://assets.architecturaldigest.in/photos/600835aed3054f83c2ded41f/16:9/w_1360,h_765,c_limit/Tre%CC%80sind-Inspire-BKC-Mumbai-main-1366x768.jpg"))),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.sp),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flat",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "50%Off",
                          style: TextStyle(
                              fontSize: 21.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("Of BLR Brewing Co",
                            style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                        Gap(1.h),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.sp),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.w, vertical: 0.5.h),
                            child: Text(
                              "Book a Table",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.sp),
                            ),
                          ),
                        )
                      ],
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
                    "Must Try Places",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dinecategory.length,
                    itemBuilder: (context, index) {
                      return PlacesWidget(
                          first: dinecategory[index]["first"],
                          secound: dinecategory[index]["secound"],
                          imgUrl: dinecategory[index]["imgUrl"]);
                    }),
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
              ...List.generate(
                popularData.length,
                (index) => Padding(
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
                ),
              ),
              Gap(2.5.h)
            ],
          ),
        ),
      ),
    );
  }
}
