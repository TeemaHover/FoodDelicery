import 'package:flutter/material.dart';
import 'package:pizza_app/utils/constants.dart';
import 'package:pizza_app/utils/text_theme.dart';

import '../pages/place/place.dart';
import '../utils/spacing.dart';

class FoodPlace extends StatelessWidget {
  const FoodPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const Place()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: orange))),
        child: Column(
          children: [
            Image.asset("assets/images/hut.png"),
            space4,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.sports_bar_rounded),
                    Text(
                      "Pizza Hut",
                      style: FontStyles.titleMedium,
                    )
                  ],
                ),
                const Icon(
                  Icons.check_circle,
                  color: yellow,
                ),
              ],
            ),
            space4,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("₮₮. ",
                        style:
                            FontStyles.titleMedium.copyWith(color: textGray)),
                    Text("Pizza",
                        style: FontStyles.titleMedium.copyWith(color: textGray))
                  ],
                ),
                Text("3,6km - 30min",
                    style: FontStyles.titleMedium.copyWith(color: textGray))
              ],
            ),
            space4,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("4.5",
                        style:
                            FontStyles.titleMedium.copyWith(color: textGray)),
                    const Icon(Icons.star, color: yellow),
                  ],
                ),
                Text("5000₮ delivery fee",
                    style: FontStyles.titleMedium.copyWith(color: textGray))
              ],
            ),
            space32,
          ],
        ),
      ),
    );
  }
}
