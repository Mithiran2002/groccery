import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class CourierPage extends StatefulWidget {
  const CourierPage({super.key});

  @override
  State<CourierPage> createState() => CourierPageState();
}

class CourierPageState extends State<CourierPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text("Parcel Delivery"),
          titleTextStyle:
              TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w600),
          toolbarHeight: 8.h,
          backgroundColor: const Color(0xFFe6470a),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pickup address",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                Gap(1.h),
                TextFormField(decoration: const InputDecoration(hintText: "")),
                Gap(3.h),
                Text(
                  "Delivery address",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                Gap(1.h),
                TextFormField(
                  decoration: const InputDecoration(),
                ),
                Gap(3.h),
                Text(
                  "Parcel Type",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                Gap(1.h),
                TextFormField(
                  onTap: () {
                    setState(() {
                      showModalBottomSheet(
                          context: context,
                          builder: (Context) {
                            return Container(
                              height: 40.h,
                              color: Colors.white,
                            );
                          });
                    });
                  },
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 5.sp),
                      hintText: "",
                      filled: true,
                      suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                      fillColor: Color(0xFFf0f0f1),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(6.sp)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(6.sp)),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: Colors.grey)),
                ),
                Gap(5.h),
                // TextFormField(
                //   decoration:
                // ),
                Gap(3.h),
                const Divider(),
                Gap(2.h),
                Text(
                  "Note:",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Gap(1.h),
                Text(
                  "•   No illegal & hazorclous items ",
                  style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Gap(1.h),
                Text(
                  "•  High Value & Frogile items not reccommended ",
                  style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Gap(1.h),
                Text(
                  "•  Select Type of parcel ",
                  style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Gap(5.h),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.sp))),
                          minimumSize:
                              MaterialStatePropertyAll(Size(90.w, 6.h)),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color(0xFFe6470a))),
                      onPressed: () {},
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white, fontSize: 13.sp),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
