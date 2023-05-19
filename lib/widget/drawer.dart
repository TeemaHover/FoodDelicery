import 'package:flutter/material.dart';
import 'package:pizza_app/utils/text_theme.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 200,
            child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/profile.png",
                      width: 100,
                    ),
                    const Text(
                      "Da3net",
                      style: FontStyles.bodySmall,
                    ),
                    const Text(
                      "da3net@gmail.com",
                      style: FontStyles.titleMedium,
                    ),
                  ],
                )),
          ),
          const Divider(
            height: 10,
            thickness: 2,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 24.0),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Profile',
                  style: FontStyles.bodySmall,
                ),
                Icon(Icons.person)
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 24.0),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Support',
                  style: FontStyles.bodySmall,
                ),
                Icon(Icons.headphones)
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 24.0),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Cart',
                  style: FontStyles.bodySmall,
                ),
                Icon(Icons.shopping_cart)
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 24.0),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Favorites',
                  style: FontStyles.bodySmall,
                ),
                Icon(Icons.star)
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 24.0),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Settings',
                  style: FontStyles.bodySmall,
                ),
                Icon(Icons.settings)
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Divider(
            height: 10,
            thickness: 2,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 24.0),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Log Out',
                  style: FontStyles.bodySmall,
                ),
                Icon(Icons.logout)
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
