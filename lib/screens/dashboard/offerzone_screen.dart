import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class OfferZoneScreen extends StatefulWidget {
  const OfferZoneScreen({super.key});

  @override
  State<OfferZoneScreen> createState() => _OfferZoneScreenState();
}

class _OfferZoneScreenState extends State<OfferZoneScreen> {
  final List photos = [
    (
      url:
          "https://www.ortery.com/wp-content/uploads/2019/05/Dawn-Soap-og01.jpg"
    ),
    (url: "https://punjabsupermart.in/wp-content/uploads/2017/12/grocery.png"),
    (
      url:
          "https://www.sunonline.lk/cdn/shop/files/GroceryPack2_05-07-2023_800x.jpg?v=1688555777"
    ),
    (
      url:
          "https://images-eu.ssl-images-amazon.com/images/G/31/img21/Grocery/GroceryNewLook/grocery_sbc_coffee_440x460.jpg"
    ),
    (
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9GBo6lcq7QwpNUFDLAkjRS_vjW9ThqVQ46eSMVJDIjQEMoJdEQvLTNKnzmc7wBuJKXT4&usqp=CAU"
    ),
    (
      url:
          "https://5.imimg.com/data5/SELLER/Default/2020/12/OW/RT/WF/51068474/grocery-items-photography-500x500.png"
    ),
  ];
  List Data = [
    {"color": const Color(0xFF1b3280)},
    {"color": const Color(0xFF6d276d)},
    {"color": Colors.black},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Offers Zone",
          style: TextStyle(fontSize: 15.sp),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 5.7.h,
        width: 90.w,
        child: FloatingActionButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.trolley,
                color: Colors.white,
              ),
              Text(
                "16 - Items -₹2886 ",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "View Cart >",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          backgroundColor: const Color(0xFFf7571b),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.7.sp),
          child: Column(
            children: [
              Gap(1.5.h),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Bank and Wallet offers",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Gap(3.h),
              SizedBox(
                height: 22.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Data.length,
                    itemBuilder: (context, index) => Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 16.5.h,
                                    width: 33.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.sp)),
                                      color: Data[index]["color"],
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Flat 10% off",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Gap(1.5.h),
                                        const Text.rich(
                                          TextSpan(
                                              text: "no min txn",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text.rich(
                                              TextSpan(
                                                  text: "Code:",
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                  text: "MONEYTAP",
                                                  style: TextStyle(
                                                      color: Colors.yellow,
                                                      fontSize: 10.sp)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),  
                                  ),
                                  Positioned(
                                    top: 13.h,
                                    child:Container(
                                      height: 4.h,
                                      width:33.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.sp),bottomRight: Radius.circular(10.sp)),
                                        border: Border.all(color: Colors.black.withOpacity(0.1)),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding:  EdgeInsets.all(4.sp),
                                        child: Image.asset("assets/png/razorpay.png"),
                                      ),
                                    )
                                    )
                                ],
                              ),
                            ),
                          ],
                        )),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Trending Offers",
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Gap(3.5.h),
              SizedBox(
                height: 70.h,
                child: GridView.builder(
                    itemCount: photos.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, mainAxisSpacing: 7.h),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                              height: 16.h,
                              width: 27.w,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.sp)),
                                color: const Color(0xFFf6f6f6),
                              ),
                              child: Image.network(photos[index].url)),
                          Positioned(
                              top: 83.sp,
                              child: Container(
                                width: 27.w,
                                height: 2.5.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12.sp),
                                      bottomRight: Radius.circular(12.sp)),
                                  color: const Color(0xFFf7571b),
                                ),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Up to 30% off",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
