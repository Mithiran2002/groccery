import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:groccery_app/widget/popular_section.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:groccery_app/screens/dashboard/dinein_page.dart';
import 'package:groccery_app/screens/dashboard/Restaurant_page.dart';

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

    // TODO: implement initState
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
                            backgroundColor: const Color(0xFFf0f0f1),
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
