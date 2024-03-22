import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/view/widget/tips_widget.dart';
import 'package:groccery_app/view/widget/custom_button.dart';
import 'package:groccery_app/view/screens/cart/coupons_page.dart';

class CartPage extends StatelessWidget {
  List<Map<String, dynamic>> chip = [
    {"text": "₹20"},
    {"text": "₹30"},
    {"text": "₹40"},
    {"text": "custom"}
  ];

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
            Gap(1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                "Cart",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 25.sp),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.location_on_outlined,
                size: 22.sp,
                color: Colors.black,
              ),
              title: Text(
                "Pickup Address",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13.sp),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 13.sp,
                color: Colors.black,
              ),
              subtitle: Text(
                "2nd cross,first main street, coimbatore",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.location_on_outlined,
                size: 22.sp,
                color: Colors.black,
              ),
              title: Text(
                "Delivery Address",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13.sp),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 13.sp,
                color: Colors.black,
              ),
              subtitle: Text(
                "No:08, crossroad,3rd street, palladam",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Gap(1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Package Type",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Gap(0.5.h),
                  Text(
                    "Food Items|Electronics",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Gap(1.h),
                  const Divider(),
                  Gap(3.h),
                  Text("Delivery Time",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700)),
                  Gap(2.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 18.sp,
                              right: 18.sp,
                              top: 10.sp,
                              bottom: 10.sp),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                size: 16.sp,
                                color: Colors.black,
                              ),
                              Gap(3.w),
                              Column(
                                children: [
                                  Text(
                                    "Standard",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "25-30 mins",
                                    style: TextStyle(
                                        fontSize: 10.sp, color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 18.sp,
                              right: 18.sp,
                              top: 10.sp,
                              bottom: 10.sp),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 16.sp,
                                color: Colors.black,
                              ),
                              Gap(3.w),
                              Column(
                                children: [
                                  Text(
                                    "Schedule",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Select Time",
                                    style: TextStyle(
                                        fontSize: 10.sp, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(3.h),
                  const Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CouponsPage()));
                    },
                    leading: Icon(
                      Icons.local_offer_outlined,
                      size: 20.sp,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Add Promo Code",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 15.5.sp),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 13.sp,
                      color: Colors.black,
                    ),
                    subtitle: Text(
                      "Get Discounts On Your Order",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Gap(1.h),
                  const Divider(),
                  Gap(1.h),
                  Text(
                    "Add Tip",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: chip.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1.5.w),
                            child: TipsWidget(
                              text: chip[index]["text"],
                              badge: true,
                            ),
                          );
                        }),
                  ),
                  const Divider(),
                  Gap(2.h),
                  Text(
                    "Bill Details",
                    style: TextStyle(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Gap(1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PromoCode",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "- ₹15",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Gap(0.5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery fee ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " ₹250",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Gap(0.5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " ₹235",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Gap(3.h),
                  CustomButton(
                    text: "Make Payment",
                    onTab: () {},
                  ),
                  Gap(2.h),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
