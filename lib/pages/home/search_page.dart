import 'package:flutter/material.dart';
import 'package:pizza_app/widget/food_place.dart';
import 'package:pizza_app/widget/rating.dart';

import '../../utils/spacing.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        // Add padding around the search bar
        padding: const EdgeInsets.symmetric(horizontal: 8.0),

        // Use a Material design search bar
        child: SingleChildScrollView(
          child: Column(
            children: const [
              space16,
              Ratings(),
              space16,
              FoodPlace(),
              space16,
              FoodPlace()
            ],
          ),
        ));
  }
}
