import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/view/widget/custom_button.dart';
import 'package:groccery_app/view/widget/inputform_field.dart';
import 'package:groccery_app/view/screens/home/cart_page.dart';

class ParcelServiceScreen extends StatefulWidget {
  const ParcelServiceScreen({super.key});

  @override
  State<ParcelServiceScreen> createState() => ParcelServiceScreenState();
}

class ParcelServiceScreenState extends State<ParcelServiceScreen> {
  bool? ischecked = true;
  List<String> text = [
    "Food Items",
    "Medicines",
    "Electronic Items",
    "Documents|Books",
    "Cloths|Accessories",
    "Others",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                size: 20.sp,
                color: Colors.white,
              )),
          title: const Text("Parcel Service"),
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
                InputFormField(title: "Enter pickup location"),
                Gap(3.h),
                Text(
                  "Delivery address",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                Gap(1.h),
                InputFormField(title: "Enter Deivery Location"),
                Gap(3.h),
                Text(
                  "Parcel Type",
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                Gap(1.h),
                InputFormField(
                  readonly: true,
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (Context) {
                          return StatefulBuilder(builder: (context, setState) {
                            return Container(
                              height: 46.h,
                              width: 100.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12.sp),
                                      topLeft: Radius.circular(12.sp))),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.w, vertical: 2.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Select Parcel Type",
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black)),
                                    SizedBox(
                                      height: 35.h,
                                      child: ListView(
                                        children: text
                                            .map(
                                              (text) => CheckboxListTile(
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .leading,
                                                  checkboxShape:
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      3.sp),
                                                          side:
                                                              const BorderSide(
                                                                  color: Colors
                                                                      .black)),
                                                  title: Text(
                                                    text,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 15.sp),
                                                  ),
                                                  checkColor: Colors.white,
                                                  activeColor:
                                                      const Color(0xFFe6470a),
                                                  tristate: true,
                                                  value: ischecked,
                                                  onChanged: (bool? newValue) {
                                                    ischecked = newValue;
                                                    setState(
                                                      () {},
                                                    );
                                                  }),
                                            )
                                            .toList(),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        });
                  },
                  title: 'Select Type Of Parcel',
                  suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded),
                ),
                Gap(5.h),
                InputFormField(title: "Any Instruction for parcel (optional)"),
                Gap(3.h),
                const Divider(),
                Gap(2.5.h),
                Text(
                  "Note:",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Gap(1.h),
                Text(
                  "     •   No illegal & hazorclous items ",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Gap(1.h),
                Text(
                  "     •  High Value & Frogile items not reccommended ",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Gap(1.h),
                Text(
                  "     •  Select Type of parcel ",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Gap(8.h),
                CustomButton(
                    text: "Continue",
                    onTab: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartPage()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
