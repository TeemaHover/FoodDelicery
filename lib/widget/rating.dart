import 'package:flutter/material.dart';

import '../utils/constants.dart';

class Ratings extends StatelessWidget {
  const Ratings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
            decoration: BoxDecoration(
              border: Border.all(color: black),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Row(
              children: const [Text("Price"), Icon(Icons.arrow_drop_down)],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
            decoration: BoxDecoration(
              border: Border.all(color: black),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Row(
              children: const [
                Text("Delivery Fees"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
            decoration: BoxDecoration(
              border: Border.all(color: black),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Row(
              children: const [Text("Ratings"), Icon(Icons.arrow_drop_down)],
            ),
          )
        ],
      ),
    );
  }
}
