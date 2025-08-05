import 'package:flutter/material.dart';
import 'package:fluxapp/views/cart/myorder/myorder.dart';
import 'package:fluxapp/views/cart/yourcart/yourcart.dart';
import 'package:fluxapp/views/home/home_screen.dart';
import 'package:fluxapp/views/profile/profile.dart';

import '../views/discover/discover.dart';

class AppDrawer extends StatelessWidget {
  final Function(int) onTabSelected;

  const AppDrawer({super.key, required this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.75,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 213, 213, 213),
            ),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img/image54.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Text('Duy Quan',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
              ],
            ),
          ),

          // Các ListTile
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Home Page'),
              onTap: () {
                Navigator.pop(context);
                onTabSelected(0);
              }),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Discover'),
            onTap: () {
              Navigator.pop(context);
              onTabSelected(1);
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Your Cart'),
            onTap: () {
              // Xử lý chuyển trang Your Cart
              Navigator.pop(context);
              onTabSelected(2);
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('My Order'),
            onTap: () {
              // Xử lý chuyển trang My Order
              Navigator.pop(context);
              onTabSelected(3);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Profile'),
            onTap: () {
              // Xử lý chuyển trang My Order
              Navigator.pop(context);
              onTabSelected(4);
            },
          ),

          ListTile(
            title: Text('OTHER'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Xử lý chuyển trang My Order
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.support_agent),
            title: Text('Support'),
            onTap: () {
              // Xử lý chuyển trang My Order
              Navigator.pop(context);
            },
          ),
          // ... (other tiles)

          SizedBox(height: 100),

          // Switch theme buttons
        ],
      ),
    );
  }
}
