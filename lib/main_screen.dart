import 'package:flutter/material.dart';
import 'package:fluxapp/views/cart/myorder/myorder.dart';
import 'package:fluxapp/views/cart/yourcart/yourcart.dart';
import 'package:fluxapp/views/discover/discover.dart';
import 'package:fluxapp/views/profile/profile.dart';
import 'package:fluxapp/widgets/slidebar.dart';
import 'views/home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    Discover(),
    YourCart(),
    MyOrder(),
    Profile(),
  ];

  void _navigateToTab(int index) {
    setState(() {
      _currentIndex = index;
    });
    Navigator.of(context).pop(); // Đóng Drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        onTabSelected: _navigateToTab,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: const Color.fromARGB(255, 255, 0, 0),
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Discover"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
