import 'package:flutter/material.dart';
import 'package:pizza_app/utils/constants.dart';
import 'package:pizza_app/utils/text_theme.dart';

import '../utils/spacing.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Most Popular Local Restaurants",
                  style: FontStyles.bodyMedium,
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            space16,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  space16,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: lightgray,
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/noodle.png",
                            width: 150, height: 150),
                        const Text(
                          "Ichigaku Ramen",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text("3km", style: TextStyle(color: textGray)),
                        Row(
                          children: const [
                            Text("4.9", style: TextStyle(color: textGray)),
                            Icon(
                              Icons.star,
                              color: orange,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  space32,
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: lightgray,
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/sushi.png",
                            width: 150, height: 150),
                        const Text(
                          "Sushi House",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text("3km", style: TextStyle(color: textGray)),
                        Row(
                          children: const [
                            Text("4.9", style: TextStyle(color: textGray)),
                            Icon(
                              Icons.star,
                              color: orange,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  space32,
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: lightgray,
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/noodle.png",
                            width: 150, height: 150),
                        const Text(
                          "Ichigaku Ramen",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text("3km", style: TextStyle(color: textGray)),
                        Row(
                          children: const [
                            Text("4.9", style: TextStyle(color: textGray)),
                            Icon(
                              Icons.star,
                              color: orange,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  space32,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
