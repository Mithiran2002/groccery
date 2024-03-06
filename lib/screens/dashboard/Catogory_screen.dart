import 'dart:convert';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:groccery_app/constants.dart';
import 'package:groccery_app/model/product_model.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _ListPage();
}

class _ListPage extends State<CategoryScreen> {
  List<ProductDetails> productDetails = [];
  Future<void> fetchAlbum() async {
    try {
      // final response_ = http.post(Uri.parse('dumy'),body: {"key":"Mitran"});
      final response =
          await http.get(Uri.parse('https://dummyjson.com/products'));
      print('Response status code: ${response.statusCode}');
      logger.w('Response body: ${response.body}');
      if (response.statusCode == 200) {
        productDetails = List<Map<String, dynamic>>.from(
                json.decode(response.body)['products'])
            .map((item) => ProductDetails.fromJson(item))
            .toList();
        setState(() {
          productDetails = productDetails;
        });
        print('First product details: ${productDetails.length}');
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFf7571b).withOpacity(0.1),
        appBar: AppBar(
          backgroundColor: Color(0xFFf7571b).withOpacity(0.7),
          title: const Center(
              child: Text(
            "Catogories",
            style: TextStyle(color: Colors.white),
          )),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 5.7.h,
          width: 90.w,
          child: FloatingActionButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.trolley,
                  color: Colors.white,
                ),
                Text(
                  "16 - Items -₹2886 ",
                  style: TextStyle(fontSize: 9.sp, color: Colors.white),
                ),
                Text(
                  "View Cart >",
                  style: TextStyle(color: Colors.white, fontSize: 9.sp),
                )
              ],
            ),
            backgroundColor: const Color(0xFFf7571b),
            onPressed: () {},
          ),
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
          scrollDirection: Axis.vertical,
          itemCount: productDetails.length,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(bottom: 1.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.sp)),
                    color: Colors.white,
                    border:
                        Border.all(color: Colors.black.withOpacity(0.1.sp))),
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15.w,
                        child: Image.network(
                          productDetails[index].images!.first,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Gap(3.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            productDetails[index].brand!,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13.sp),
                          ),
                          Gap(0.5.h),
                          SizedBox(
                            width: 70.w,
                            child: Text(
                              productDetails[index].description!,
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.normal),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Gap(0.5.h),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Rs ${productDetails[index].price!}',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ));
          },
        ));
  }
}
