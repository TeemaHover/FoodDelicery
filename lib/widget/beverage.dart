import 'package:flutter/material.dart';
import 'package:pizza_app/utils/constants.dart';
import 'package:pizza_app/utils/text_theme.dart';

class Beverage extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const Beverage(
      {super.key, this.title = "", this.price = "", this.image = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            image,
            width: 90,
            height: 90,
          ),
          Text(
            title,
            style: FontStyles.titleMedium.copyWith(color: black),
          ),
          Text(
            price,
            style: FontStyles.titleMedium.copyWith(color: textGray),
          )
        ],
      ),
    );
  }
}
