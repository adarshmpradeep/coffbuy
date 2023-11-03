import 'package:coffbuy/components/google_nav_bar.dart';
import 'package:coffbuy/const.dart';
import 'package:coffbuy/pages/cart_page.dart';
import 'package:coffbuy/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate botttom bar
  int _selectedIndex = 0;
  void navigateBottomBar(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//pages
  final List<Widget> _pages = [
    //Shop page
    ShopPage(),

    //cart page
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
