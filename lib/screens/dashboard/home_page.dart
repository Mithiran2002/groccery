import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:groccery_app/widget/category_card.dart';
import 'package:groccery_app/widget/home_page_banner.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 3.w, right: 3.w, top: 3.h, bottom: 1.h),
              child: header(),
            ),
            Gap(2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: searchBar(),
            ),
            Gap(2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: StaggeredGrid.count(
                crossAxisCount: 3,
                crossAxisSpacing: 7.sp,
                mainAxisSpacing: 7.sp,
                children: const [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.2,
                    child: CategoryCard(
                      title: "Food",
                      timing: "25 mins",
                      imageUrl:
                          "https://www.freepnglogos.com/uploads/burger-png/burger-png-png-images-yellow-images-12.png",
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.2,
                    child: CategoryCard(
                      title: "Mart",
                      timing: "20 mins",
                      imageUrl:
                          "https://www.pngplay.com/wp-content/uploads/7/Grocery-Transparent-PNG.png",
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.2,
                    child: CategoryCard(
                      title: "Courier",
                      timing: "30 mins",
                      imageUrl: "https://pngimg.com/d/box_PNG92.png",
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.2,
                    child: CategoryCard(
                      title: "Dine in",
                      timing: "No Waiting",
                      imageUrl:
                          "https://www.pngfind.com/pngs/b/569-5695753_dining-table-wooden-dining-table-design-with-glass.png",
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.2,
                    child: CategoryCard(
                      title: "Gold membership",
                      timing: "Free delivery can all order",
                      imageUrl:
                          "https://lyfas.com/wp-content/uploads/2022/10/Lyfas-Gold-Membership.png",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:3.w,vertical: 2.h),
              child: const HomePageBanner(
                buttontxt: "Order Now",
                imageUrl: "",
                off: "25%Off",
                order: "On all food orders",
                text: "Get up to",
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Deliver Now",
              style: TextStyle(fontSize: 12.sp, color: Colors.grey),
            ),
            Row(
              children: [
                Text(
                  "Hsr Layout",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w900),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 20.sp,
                ),
              ],
            ),
          ],
        ),
        CircleAvatar(
          maxRadius: 20.sp,
          backgroundColor: const Color(0xFFf0f0f1),
          child: const Icon(Icons.person_2_outlined),
        )
      ],
    );
  }

  Widget searchBar() {
    return SearchBar(
      shadowColor: const MaterialStatePropertyAll(Color(0xFFf0f0f1)),
      elevation: const MaterialStatePropertyAll(1),
      trailing: <Widget>[
        Icon(
          Icons.mic_outlined,
          size: 18.sp,
          color: Colors.black,
        ),
        SizedBox(
          height: 2.5.h,
          child: const VerticalDivider(
            color: Colors.grey,
          ),
        ),
        Icon(
          Icons.filter_list_rounded,
          size: 18.sp,
          color: Colors.black,
        )
      ],
      backgroundColor: const MaterialStatePropertyAll(Color(0xFFf0f0f1)),
      hintText: "Search for food,grocery,etc",
      hintStyle: MaterialStatePropertyAll(TextStyle(
          fontWeight: FontWeight.w600, color: Colors.grey, fontSize: 11.sp)),
      leading: Icon(
        Icons.search_outlined,
        size: 18.sp,
        color: Colors.black,
      ),
    );
  }
}
