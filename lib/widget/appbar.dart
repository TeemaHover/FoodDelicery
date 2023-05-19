import 'package:flutter/material.dart';

import '../pages/address/address_page.dart';
import '../utils/constants.dart';
import '../utils/spacing.dart';
import '../utils/text_theme.dart';

class MainAppBar extends StatelessWidget {
  final int index;

  const MainAppBar({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddressPage();
                  }));
                },
                child: const Icon(
                  Icons.location_on_outlined,
                  size: 40,
                  color: black,
                ),
              ),
              Text(
                "Bayangol district, 5th khoroo",
                style: FontStyles.titleLarge.copyWith(color: black),
              ),
            ],
          ),
          actions: [
            Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(
                    Icons.person,
                    color: black,
                    size: 40,
                  ));
            }),
            space16,
          ],
        );
      case 1:
        return AppBar(
          title: SizedBox(
            height: 50,
            child: TextField(
              //controller: _searchController,
              decoration: InputDecoration(
                hintStyle: const TextStyle(color: gray),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                hintText: 'Search...',
                // Add a clear button to the search bar
                suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () =>
                        //_searchController.clear(),
                        null),
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
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 3.0, color: Colors.red),
              insets: EdgeInsets.symmetric(horizontal: 20.0),
            ),
            tabs: [
              Text(
                "Food",
                style: FontStyles.bodyMedium.copyWith(color: black),
              ),
              Text(
                "Restaurant",
                style: FontStyles.bodyMedium.copyWith(color: black),
              ),
            ],
          ),
        );

      default:
        return AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Column(
            children: [
              const Divider(
                height: 10,
                thickness: 2,
              ),
              space16,
              Text("Your Order",
                  style: FontStyles.bodyMedium.copyWith(color: black)),
              space16,
              const Divider(
                height: 10,
                thickness: 2,
              ),
            ],
          ),
        );
    }
  }
}
