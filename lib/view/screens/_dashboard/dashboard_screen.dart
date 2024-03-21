import 'package:flutter/material.dart';
import 'package:groccery_app/view/screens/_dashboard/food_screen.dart';
import 'package:groccery_app/view/screens/_dashboard/home_screen.dart';
import 'package:groccery_app/view/screens/_dashboard/mart_screen.dart';
import 'package:groccery_app/view/screens/_dashboard/dinein_screen.dart';
import 'package:groccery_app/view/screens/_dashboard/parcel_service_screen.dart';

class DashBoardScreen extends StatefulWidget {
  final int? index;
  const DashBoardScreen(this.index);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  late int selectedIndex;
  List<Widget> pageContent = [
    Center(
      child: Container(
        alignment: Alignment.center,
        child: const Text("Home"),
      ),
    ),
    const Center(
      child: Text("Food Page"),
    ),
    const Center(
      child: Text("Mart"),
    ),
    const Center(
      child: Text("offers"),
    ),
    const Center(
      child: Text("Account"),
    ),
  ];
  @override
  void initState() {
    super.initState();
    selectedIndex = widget.index ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu_outlined),
            label: "food Page",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_grocery_store_outlined), label: "Mart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dining_outlined), label: "Dine in"),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining_outlined),
            label: "Delivery",
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: switchcaseFun(),
    );
  }

  Widget switchcaseFun() {
    switch (selectedIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return const FoodScreen();
      case 2:
        return MartScreen();
      case 3:
        return const DineInScreen();
      case 4:
        return const ParcelServiceScreen();
      default:
        return Container();
    }
  }
}
