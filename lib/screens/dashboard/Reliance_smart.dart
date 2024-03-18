import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/widget/dinein_widget.dart';
import 'package:groccery_app/widget/popular_section.dart';
import 'package:groccery_app/screens/dashboard/all_stores.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:groccery_app/screens/dashboard/fruits_page.dart';

class RelianceSmart extends StatelessWidget {
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
  List<Map<String, dynamic>> vegetables = [
    {
      "title": "Beetroot",
      "description": "₹70/kg",
      "imgUrl":
          "https://media.istockphoto.com/id/493446908/photo/fresh-sliced-beetroot-on-wooden-surface.jpg?s=612x612&w=0&k=20&c=z94X8FkGe5Mm6lN5HcZsGaD4nm_vMlkdlBzhut1spes=",
    },
    {
      "title": "Carrot",
      "description": "₹170/kg ",
      "imgUrl": "https://static.toiimg.com/photo/105672842.cms",
    },
    {
      "title": "Thakkali ",
      "description": "₹190/kg",
      "imgUrl":
          "https://m.media-amazon.com/images/I/41W8bruGkZL._AC_UF1000,1000_QL80_.jpg",
    },
    {
      "title": "vengayam",
      "description": "₹160/kg",
      "imgUrl":
          "https://media.maalaimalar.com/h-upload/2023/03/01/1843048-onion.webp",
    },
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
          "https://media.maalaimalar.com/h-upload/2023/03/01/1843048-onion.webp",
    },
  ];
  List<Map<String, dynamic>> dineCart = [
    {
      "title": "Fruits & Vegetables",
      "imgUrl":
          "https://www.freepnglogos.com/uploads/vegetables-png/vegetables-download-vegetable-photos-png-image-pngimg-3.png"
    },
    {
      "title": "Bread and Egg",
      "imgUrl":
          "https://harvestgold.in/image/ProductImage/818a8a255136cbe36165ad397ee9a2b4.png",
    },
    {
      "title": "Cereals and breakfast",
      "imgUrl":
          "https://www.pngall.com/wp-content/uploads/15/Cereal-PNG-Pic.webp"
    },
    {
      "title": "Chocklates & Deserts",
      "imgUrl":
          "https://static.vecteezy.com/system/resources/previews/031/112/836/original/ai-generated-chocolate-milk-drink-in-glass-transparent-background-free-png.png"
    },
    {
      "title": "Rava",
      "imgUrl":
          "https://5.imimg.com/data5/RF/WZ/ML/SELLER-13640528/star-idli-rava-500x500.png"
    },
    {
      "title": "Face Creams",
      "imgUrl": "https://ik.imagekit.io/jammi/img/Glow-1024x1024.png"
    },
    {
      "title": "Try Fruits",
      "imgUrl":
          "https://media.istockphoto.com/id/503016934/photo/entrance-of-luxury-hotel.jpg?s=612x612&w=0&k=20&c=DXFzucB2xWGf3PI6_yjhLKDvrFcGlOpOjXh6KDI8rqU="
    },
    {
      "title": "Tea & Coffe powder",
      "imgUrl":
          "https://media.istockphoto.com/id/1452529483/photo/3d-render-of-luxury-hotel-room.webp?b=1&s=170667a&w=0&k=20&c=u8emlx6KguYJGU4jZFRwGx9KAxOzWLmEBdIJIj1DAdQ="
    },
    {
      "title": "Snacke & buiskets",
      "imgUrl":
          "https://media.istockphoto.com/id/827135348/photo/bottle-of-champagne-in-bed.jpg?s=612x612&w=0&k=20&c=u6Q1-IF9RxcwLvWWnrMfv7FRjcY6Q5pY5b51-wGOqH0="
    },
    {
      "title": "Sauces And Breads",
      "imgUrl":
          "https://images.pexels.com/photos/331107/pexels-photo-331107.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    },
    {
      "title": "Orgonic and Premium",
      "imgUrl":
          "https://media.istockphoto.com/id/503016934/photo/entrance-of-luxury-hotel.jpg?s=612x612&w=0&k=20&c=DXFzucB2xWGf3PI6_yjhLKDvrFcGlOpOjXh6KDI8rqU="
    },
    {
      "title": "Cleaning Essential",
      "imgUrl":
          "https://media.istockphoto.com/id/1452529483/photo/3d-render-of-luxury-hotel-room.webp?b=1&s=170667a&w=0&k=20&c=u8emlx6KguYJGU4jZFRwGx9KAxOzWLmEBdIJIj1DAdQ="
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                    height: 30.h,
                    width: 100.w,
                    fit: BoxFit.fitWidth,
                    imageUrl:
                        "https://media.istockphoto.com/id/1140835700/photo/woman-buying-fruits-at-the-farmers-market.jpg?s=612x612&w=0&k=20&c=mdU-9YGrsu1X96lfrDtT7qpy_6zlvpATccryfpYTzV4="),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 16.sp,
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 18.sp,
                            )),
                      ),
                      const Spacer(),
                      CircleAvatar(
                        radius: 16.sp,
                        backgroundColor: Colors.white,
                        child: const Icon(Icons.favorite_outline),
                      ),
                      Gap(2.5.w),
                      CircleAvatar(
                        radius: 16.sp,
                        backgroundColor: Colors.white,
                        child: const Icon(Icons.search),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Reliance Smart buy",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Text(
                "BTm Layout|2.2k.|20min",
                style: TextStyle(color: Colors.black, fontSize: 12.sp),
              ),
            ),
            Gap(2.h),
            Divider(),
            Gap(2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Text(
                "Hot Sellers",
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
            Gap(2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Text(
                "Categories",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            ),
            Gap(2.h),
            SizedBox(
              height: 45.h,
              child: GridView.builder(
                  itemCount: dineCart.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 25.sp,
                      crossAxisSpacing: 1.sp),
                  itemBuilder: (context, index) {
                    return DineInWidget(
                      title: dineCart[index]["title"],
                      imgUrl: dineCart[index]["imgUrl"],
                    );
                  }),
            ),
            Gap(2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Text(
                    "Vegetables",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: CircleAvatar(
                      backgroundColor: const Color(0xFFf0f0f1),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward,
                              size: 17.sp, color: Colors.black))),
                )
              ],
            ),
            Gap(2.h),
            SizedBox(
              height: 35.h,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                scrollDirection: Axis.horizontal,
                itemCount: vegetables.length,
                itemBuilder: (context, index) => PopularSection(
                  salaar: false,
                  title: vegetables[index]["title"],
                  description: vegetables[index]["description"],
                  imgUrl: vegetables[index]["imgUrl"],
                  favouriteIcon: Icon(
                    Icons.favorite_outline,
                    size: 19.sp,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Gap(2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: CircleAvatar(
                      backgroundColor: const Color(0xFFf0f0f1),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward,
                              size: 17.sp, color: Colors.black))),
                )
              ],
            ),
            Gap(1.h),
            SizedBox(
              height: 35.h,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                scrollDirection: Axis.horizontal,
                itemCount: fruits.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FruitsPage()));
                  },
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
                ),
              ),
            ),
            Gap(1.h),
          ],
        ),
      ),
    ));
  }
}
