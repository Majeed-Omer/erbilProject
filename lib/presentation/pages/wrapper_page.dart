import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/about_page1.dart';
import 'package:flutter_application_1/presentation/pages/posts_page.dart';
import 'package:flutter_application_1/presentation/pages/wishList_page.dart';

import '../pages/home_page.dart';
import '../pages/map_page.dart';

class WrapperPage extends StatefulWidget {
  @override
  State<WrapperPage> createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    HomePage(),
    PostsPage(),
    MapPage(),
    WishListPage(),
    AboutPage1()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.cyan,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'Posts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send_outlined),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
