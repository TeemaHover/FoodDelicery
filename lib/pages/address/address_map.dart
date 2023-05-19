import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/text_theme.dart';

class AddressMap extends StatefulWidget {
  const AddressMap({super.key});

  @override
  State<AddressMap> createState() => _AddressMapState();
}

class _AddressMapState extends State<AddressMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: black),
        elevation: 0,
        title: Text(
          "Save Address",
          style: FontStyles.bodyMedium.copyWith(color: black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/mapBig.png",
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Save"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
