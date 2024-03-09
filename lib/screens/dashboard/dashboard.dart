import 'package:flutter/material.dart';
import 'package:groccery_app/screens/dashboard/home_page.dart';
import 'package:groccery_app/screens/dashboard/catogory_screen.dart';
import 'package:groccery_app/screens/dashboard/offerzone_screen.dart';




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
      child: Text("Catogories"),
    ),
    const Center(
      child: Text("Search"),
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
            icon: Icon(Icons.dashboard_rounded),
            label: "Catogories",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "offers"),
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
        return  HomePage();
      case 1:
        return const CategoryScreen();
      case 2:
        return const Center(
          child: Text("hi"),
        );
      case 3:
        return const OfferZoneScreen();
      default:
        return Container();
    }
  }
}
