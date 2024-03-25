import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:groccery_app/utils/constants.dart';
import 'package:groccery_app/model/stores_model.dart';
import 'package:groccery_app/service/api_service.dart';
import 'package:groccery_app/view/widget/mart_widget.dart';
import 'package:groccery_app/view/screens/mart/reliance_smart.dart';

// ignore: must_be_immutable
class AllStores extends StatefulWidget {
  const AllStores({super.key});

  @override
  State<AllStores> createState() => _AllStoresState();
}

class _AllStoresState extends State<AllStores> {
  List<Stores>? storedata = [];
  Future<void> getproductList() async {
    try {
      Map<String, dynamic> _response =
          await ApiService.get(slug: ApiConstants.STORES_ENDPOINT);
      List<Stores> dummyStores =
          List<Map<String, dynamic>>.from(_response["products"]).map((item) {
        return Stores.fromJson(item);
      }).toList();
      setState(() {
        storedata = dummyStores;
      });
      logger.e(storedata!.length);
    } catch (e) {}
  }

  @override
  void initState() {
    super.initState();
    getproductList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                CircleAvatar(
                  backgroundColor: const Color(0xFFf0f0f1),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 18.sp,
                  ),
                )
              ],
            ),
          ),
          Gap(1.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "All Details",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                ),
                Text(
                  "120 Stores",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Gap(1.h),
          ...List.generate(
              storedata!.length,
              (index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.h),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RelianceSmart()));
                        },
                        child: MartWidget(
                          title: storedata![index].title.toString(),
                          time: storedata![index].brand.toString(),
                          imgUrl: storedata![index].images!.last.toString(),
                          rating: storedata![index].rating.toString(),
                        )),
                  )),
        ],
      ),
    )));
  }
}
