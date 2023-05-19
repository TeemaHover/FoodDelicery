import 'package:flutter/material.dart';
import 'package:pizza_app/pages/address/address_save.dart';
import 'package:pizza_app/utils/spacing.dart';
import 'package:pizza_app/utils/text_theme.dart';

import '../../utils/constants.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: black),
        elevation: 0,
        title: Text(
          "Select Address",
          style: FontStyles.bodyMedium.copyWith(color: black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddressSave();
                  }));
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      size: 30,
                    ),
                    space16,
                    Flexible(
                        child: Text(
                      "Bayangol district, 5th khoroo Ulaanbaatar, Mongolia",
                      style: FontStyles.bodySmall,
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
