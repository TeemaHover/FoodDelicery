import 'package:flutter/material.dart';
import 'package:pizza_app/utils/constants.dart';
import 'package:pizza_app/utils/spacing.dart';
import 'package:pizza_app/utils/text_theme.dart';
import 'package:pizza_app/widget/rating.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            TextField(
              //controller: _searchController,

              decoration: InputDecoration(
                hintStyle: const TextStyle(color: gray),
                hintText: 'Search...',
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                // Add a clear button to the search bar

                // Add a search icon or button to the search bar
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // Perform the search here
                  },
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: gray),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            space16,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Column(
                  children: [
                    Image.asset("assets/images/pizza.png",
                        width: 75, height: 75),
                    const Text(
                      "Pizza",
                      style: FontStyles.bodySmall,
                    ),
                  ],
                ),
                space24,
                Column(
                  children: [
                    Image.asset("assets/images/steak.png",
                        width: 75, height: 75),
                    const Text(
                      "Steak",
                      style: FontStyles.bodySmall,
                    ),
                  ],
                ),
                space24,
                Column(
                  children: [
                    Image.asset("assets/images/beverage.png",
                        width: 75, height: 75),
                    const Text(
                      "Beverage",
                      style: FontStyles.bodySmall,
                    ),
                  ],
                ),
                space24,
                Column(
                  children: [
                    Image.asset("assets/images/pizza.png",
                        width: 75, height: 75),
                    const Text(
                      "Pizza",
                      style: FontStyles.bodySmall,
                    ),
                  ],
                ),
                space24,
                Column(
                  children: [
                    Image.asset("assets/images/steak.png",
                        width: 75, height: 75),
                    const Text(
                      "Steak",
                      style: FontStyles.bodySmall,
                    ),
                  ],
                ),
                space24,
                Column(
                  children: [
                    Image.asset("assets/images/beverage.png",
                        width: 75, height: 75),
                    const Text(
                      "Beverage",
                      style: FontStyles.bodySmall,
                    ),
                  ],
                ),
              ]),
            ),
            space16,
            const Ratings()
          ],
        ));
  }
}
