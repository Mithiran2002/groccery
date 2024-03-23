import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:groccery_app/view/widget/home_page_banner.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:groccery_app/view/screens/login_screen/login_screen.dart';

class ProfilePage extends StatefulWidget {
  final String? userName;

  ProfilePage({
    super.key,
    this.userName,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? userName;
  String? userEmail;
  String? image;
  getuserName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString('userName')!;
      userEmail = prefs.getString('userEmail')!;
      image = prefs.getString('userImage')!;
    });
    logger.i(userName);
  }

  List<Map<String, dynamic>> profile = [
    {"text": "My Account", "icon": Icons.person_2_outlined},
    {
      "text": "My Order",
      "icon": Icons.shopping_bag_outlined,
    },
    {
      "text": "Payments",
      "icon": Icons.payment_outlined,
    },
    {
      "text": "Address",
      "icon": Icons.location_on_outlined,
    },
    {
      "text": "Favourites",
      "icon": Icons.favorite_outline,
    },
    {
      "text": "Promocodes",
      "icon": Icons.local_offer_outlined,
    },
    {
      "text": "Settings",
      "icon": Icons.settings_outlined,
    },
    {
      "text": "Help",
      "icon": Icons.help_outline_rounded,
    },
    {
      "text": "Log out",
      "icon": Icons.logout_outlined,
    }
  ];
  @override
  void initState() {
    super.initState();
    getuserName();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 23.sp,
                color: Colors.black,
              )),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName ?? '',
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          userEmail ?? '',
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    CircleAvatar(
                      maxRadius: 25.sp,
                      backgroundColor: const Color(0xFFf0f0f1),
                      backgroundImage: CachedNetworkImageProvider(
                        image ?? "https://robohash.org/Jeanne.png?set=set4",
                      ),
                    ),
                  ],
                ),
                Gap(2.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 1.5.w),
                  padding: EdgeInsets.only(
                      top: 15.sp, left: 10.sp, bottom: 15.sp, right: 10.sp),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: const Color(0xFFffeece)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gold Membership",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1c2440)),
                          ),
                          Gap(0.5.h),
                          Text(
                            "Free Delivery on all orders",
                            style: TextStyle(
                                color: const Color(0xFF1c2440),
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Gap(0.9.h),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.sp),
                              color: const Color(0xFF1c2440),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2.w, vertical: 0.5.h),
                              child: Text(
                                "Knowmore",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                      CachedNetworkImage(
                          fit: BoxFit.contain,
                          height: 12.h,
                          imageUrl:
                              "https://cdn-icons-png.flaticon.com/512/2534/2534817.png")
                    ],
                  ),
                ),
                Gap(2.h),
                SizedBox(
                  height: 60.h,
                  child: ListView.builder(
                      itemCount: profile.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: Color(0xFFe6470a),
                                      title: Text(
                                        "Logout",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18.sp),
                                      ),
                                      alignment: Alignment.center,
                                      content: Text(
                                        "Are You Sure?",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp),
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              "No",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w600),
                                            )),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushAndRemoveUntil(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              LoginScreen()),
                                                      (Route<dynamic> route) =>
                                                          false);
                                            },
                                            child: Text("yes",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.w600))),
                                      ],
                                    ));
                          },
                          child: ListTile(
                            leading: Icon(
                              profile[index]["icon"],
                              size: 20.sp,
                              color: Colors.black,
                            ),
                            title: Text(
                              profile[index]["text"],
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 14.sp,
                              color: Colors.black,
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
