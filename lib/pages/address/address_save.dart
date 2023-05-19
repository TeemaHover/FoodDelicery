import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/text_theme.dart';
import 'address_map.dart';

class AddressSave extends StatefulWidget {
  const AddressSave({super.key});

  @override
  State<AddressSave> createState() => _AddressSaveState();
}

class _AddressSaveState extends State<AddressSave> {
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddressMap();
                  }));
                },
                child: Image.asset(
                  "assets/images/map.png",
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                ),
              ),
              const Text(
                "Bayangol District, 5th khoroo",
                style: FontStyles.bodySmall,
              ),
              Text("Ulaanbaatar, Mongolia",
                  style: FontStyles.bodySmall.copyWith(color: textGray)),
              const Divider(
                height: 10,
                thickness: 2,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Apartment",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Entry Code",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Building name",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
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
                    child: const Text("Save Address"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
