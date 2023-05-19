import 'package:flutter/material.dart';

import '../utils/spacing.dart';

class OrderList extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const OrderList(
      {super.key, this.title = "", this.price = "", this.image = ""});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                image,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              space16,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  space24,
                  Text(price),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: const [
                Icon(
                  Icons.delete,
                  size: 16,
                ),
                Text("1"),
                Icon(
                  Icons.add,
                  size: 16,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
