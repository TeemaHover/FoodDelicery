import 'package:flutter/material.dart';
import 'package:pizza_app/pages/home/search_page.dart';

import '../../utils/constants.dart';
import '../../widget/appbar.dart';
import '../../widget/drawer.dart';
import 'cart_page.dart';
import 'main_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final _buildBody = const [
    MainPage(),
    SearchPage(),
    CartPage(),
  ];
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            key: _key,
            appBar: PreferredSize(
              preferredSize: selectedIndex == 1
                  ? const Size.fromHeight(100)
                  : const Size.fromHeight(60),
              child: MainAppBar(
                index: selectedIndex,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 40,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    size: 40,
                  ),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 40,
                  ),
                  label: "Cart",
                ),
              ],
              currentIndex: selectedIndex,
              selectedItemColor: red,
              unselectedItemColor: yellow,
              onTap: onItemTapped,
            ),
            endDrawer: selectedIndex == 0 ? const ProfileDrawer() : null,
            body: selectedIndex == 1
                ? const TabBarView(children: [SearchPage(), SearchPage()])
                : SingleChildScrollView(
                    child: IndexedStack(
                      index: selectedIndex,
                      children: _buildBody,
                    ),
                  )));
  }
}
