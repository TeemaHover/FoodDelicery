import 'package:flutter/material.dart';
import 'package:pizza_app/widget/foods.dart';
import 'package:pizza_app/widget/home_header.dart';

import '../../widget/home_banner.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: SingleChildScrollView(
          child: Column(
            children: const [HomeHeader(), HomeBanner(), Food()],
          ),
        ));
  }
}
