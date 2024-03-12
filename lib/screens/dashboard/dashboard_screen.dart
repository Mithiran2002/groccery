import 'package:flutter/material.dart';
import 'package:groccery_app/screens/dashboard/home_page.dart';
import 'package:groccery_app/screens/dashboard/food_page.dart';
import 'package:groccery_app/screens/dashboard/mart_page.dart';
import 'package:groccery_app/screens/dashboard/dinein_page.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int selectedIndex = 0;
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
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
              icon: Icon(Icons.person_3_outlined), label: "Account"),
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
        return HomePage();
      case 1:
        return const FoodPage();
      case 2:
        return MartPage();
      case 3:
        return const DineInPage();
      default:
        return Container();
    }
  }
}
