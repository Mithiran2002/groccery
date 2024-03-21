import 'dart:convert';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:groccery_app/utils/constants.dart';
import 'package:groccery_app/model/recipe_model.dart';
import 'package:groccery_app/model/catogory_model.dart';
import 'package:groccery_app/view/widget/food_list.dart';
import 'package:groccery_app/view/widget/custom_button.dart';
import 'package:groccery_app/view/screens/home/cart_page.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RestaurantPage extends StatefulWidget {
  int? id;
  RestaurantPage({super.key, required this.id});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  bool switchvalue = false;
  List<Map<String, dynamic>> listFood = [
    {
      "title": "Pizza is Wonderful taste ",
      "secound": "The tasty and very nice to Eat,Good",
      "price": "₹380",
      "imgUrl":
          "https://www.eatingwell.com/thmb/vfsH3HUV7V-3bgUFXHs4JmwdJXY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/chicken-pizza-ck-x-fe666e4956254faa891e8b238d1a8664.jpg"
    },
    {
      "title": "Cheese Pizza is Wonderful taste  ",
      "secound": "The tasty and very nice to Eat,Good",
      "price": "₹480",
      "imgUrl":
          "https://thecozycook.com/wp-content/uploads/2023/08/Buffalo-Chicken-Pizza-f.jpg"
    },
    {
      "title": "chicken Pizza is Wonderful taste  ",
      "secound": "The tasty and juicy chicken",
      "price": "₹350",
      "imgUrl":
          "https://static.toiimg.com/thumb/53339084.cms?imgsize=85489&width=800&height=800"
    },
    {
      "title": "Butter Pizza is Wonderful taste ",
      "secound": "The tasty and juicy butter",
      "price": "₹250",
      "imgUrl":
          "https://mamabearscookbook.com/wp-content/uploads/2019/06/keto-butter-chicken-pizza-feature.webp"
    },
    {
      "title": "Veg Pizza is Wonderful taste ",
      "secound": "The tasty and very nice to Eat,Good",
      "price": "₹180",
      "imgUrl":
          "https://www.cremeux.in/wp-content/uploads/2023/07/tomato-fresh-veggie.jpeg"
    },
  ];
  List<Map<String, dynamic>> bottom = [
    {
      "title": "Reccommended",
      "intvalue": "14",
    },
    {
      "title": "Ramadan Irfan Spcial",
      "intvalue": "10",
    },
    {
      "title": "Combo Meal",
      "intvalue": "20",
    },
    {
      "title": "Non veg Starters",
      "intvalue": "16",
    },
    {
      "title": "Breads",
      "intvalue": "29",
    },
    {
      "title": "Rice",
      "intvalue": "30",
    },
    {
      "title": "Drinks",
      "intvalue": "14",
    },
    {
      "title": "Desert",
      "intvalue": "23",
    },
  ];
  Catogory? product;
  Future<void> getProduct() async {
    try {
      var response = await http.get(
        Uri.parse(
          'https://dummyjson.com/products/${widget.id}',
        ),
      );
      // logger.w('Response body: ${response.body}');
      if (response.statusCode == 200) {
        Map<String, dynamic> result = jsonDecode(response.body);
        Catogory dummyCatogory = Catogory.fromJson(result);

        setState(() {
          product = dummyCatogory;
        });
        logger.w("Catogory Data:${product!.toJson()}");
      } else {
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    logger.w('The ID :: ${widget.id}');
    getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: Visibility(
        visible: true,
        child: FloatingActionButton.extended(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.sp)),
            backgroundColor: const Color(0xFFe6470a),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.sp)),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.w, vertical: 2.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Menu",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: Icon(
                                          Icons.cancel_outlined,
                                          size: 19.sp,
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50.h,
                                width: 100.w,
                                child: ListView.builder(
                                    itemCount: bottom.length,
                                    itemBuilder: ((context, index) {
                                      return ListTile(
                                        title: Text(
                                          bottom[index]['title'],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        trailing: Text(
                                          bottom[index]['intvalue'],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      );
                                    })),
                              ),
                              Gap(1.h),
                            ],
                          ),
                        ));
                  });
            },
            label: Text(
              "Menu",
              style: TextStyle(color: Colors.white, fontSize: 12.sp),
            )),
      ),
      body: product?.images?.last != null
          ? SingleChildScrollView(
              child: Column(
                children: [
                  imgSection(),
                  Gap(1.5.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: titleSection(),
                  ),
                ],
              ),
            )
          :    Center(
              child: CircularProgressIndicator(backgroundColor: Color(0xFFe6470a),color: Colors.black,),
            ),
    ));
  }

  Widget imgSection() {
    return Stack(
      children: [
        CachedNetworkImage(
            height: 30.h,
            width: 100.w,
            fit: BoxFit.fitHeight,
            imageUrl: product!.images!.last),
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
    );
  }

  Widget titleSection() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            product?.brand ?? "",
            style: TextStyle(
                fontSize: 23.sp,
                fontWeight: FontWeight.w900,
                color: Colors.black),
          ),
        ),
        Gap(0.5.h),
        Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                product!.price.toString(),
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            const Spacer(),
            Icon(
              Icons.star,
              size: 12.sp,
              color: Colors.yellow,
            ),
            Text(
              product!.rating.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Gap(0.5.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Btm Layout|1km|38 mins Delivery",
            style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.w600,
                color: Colors.grey),
          ),
        ),
        Gap(2.h),
        const Divider(),
        Gap(2.h),
        Row(
          children: [
            Switch(
                activeColor: Colors.green,
                value: switchvalue,
                onChanged: (value) {
                  setState(() {
                    switchvalue = value;
                  });
                }),
            Gap(0.5.w),
            Text(
              "Only Veg",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 8.sp.sp),
            ),
            Gap(0.5.w),
            Icon(
              Icons.dataset_outlined,
              size: 13.sp,
              color: Colors.green,
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.all(4.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                color: const Color(0xFFf0f0f1),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.person_add_outlined,
                    size: 14.sp,
                  ),
                  Text("Group Order",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ],
        ),
        Gap(2.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Most Popular",
                style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_up_rounded,
              size: 19.sp,
              color: Colors.black,
            )
          ],
        ),
        ...List.generate(
            listFood.length,
            (index) => FoodList(
                title: listFood[index]["title"],
                secound: listFood[index]["secound"],
                price: listFood[index]["price"],
                imgUrl: listFood[index]["imgUrl"])),
        Gap(1.5.h),
        CustomButton(
            text: "View Cart(2 Items)",
            onTab: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CartPage()));
            }),
        Gap(1.h)
      ],
    );
  }
}
