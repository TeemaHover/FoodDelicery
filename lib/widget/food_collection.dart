import 'package:flutter/material.dart';
import 'package:pizza_app/components/order_button.dart';
import 'package:pizza_app/utils/constants.dart';
import 'package:pizza_app/utils/text_theme.dart';

import '../utils/spacing.dart';

class FoodCollection extends StatelessWidget {
  final String title;
  final String price;
  final String desc;
  const FoodCollection(
      {super.key,
      required this.title,
      required this.price,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset("assets/images/collection.png"),
          space16,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    FontStyles.titleLarge.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                price,
                style:
                    FontStyles.titleLarge.copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
          space16,
          const Divider(
            height: 10,
            thickness: 2,
          ),
          space16,
          Text(desc,
              style: FontStyles.titleMedium
                  .copyWith(fontWeight: FontWeight.bold, color: textGray)),
          space16,
          const OrderButton(txt: "Сагсанд хийх", color: red)
        ],
      ),
    );
  }
}
