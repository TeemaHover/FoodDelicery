import 'package:flutter/material.dart';
import 'package:pizza_app/components/order_button.dart';
import 'package:pizza_app/utils/constants.dart';
import 'package:pizza_app/utils/text_theme.dart';
import 'package:pizza_app/widget/beverage.dart';
import 'package:pizza_app/widget/order_list.dart';

import '../../utils/spacing.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              height: 10,
              thickness: 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                space16,
                Text("Items", style: FontStyles.bodyMedium),
                space16,
                OrderList(
                  title: "Зайдсан дэлбээт",
                  price: "37000₮",
                  image: "assets/images/pizza_food.png",
                ),
                space16,
                OrderList(
                  title: "Тахиа",
                  price: "6000₮",
                  image: "assets/images/chicken.png",
                ),
                space16,
                OrderList(
                  title: "Coca Cola Дунд",
                  price: "7000₮",
                  image: "assets/images/cola.png",
                ),
              ],
            ),
            space16,
            const Divider(
              height: 10,
              thickness: 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                space16,
                const Text("Must Ordered Items", style: FontStyles.bodyMedium),
                space16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Beverage(
                      title: "Coca Cola",
                      price: "4999₮",
                      image: "assets/images/cola_logo.png",
                    ),
                    Beverage(
                      title: "Sprite",
                      price: "4999₮",
                      image: "assets/images/sprite_logo.png",
                    ),
                    Beverage(
                      title: "Fanta",
                      price: "4999₮",
                      image: "assets/images/fanta_logo.png",
                    ),
                  ],
                )
              ],
            ),
            space16,
            const Divider(
              height: 10,
              thickness: 2,
            ),
            space16,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Summary", style: FontStyles.bodyMedium),
                space16,
                Row(
                  children: const [
                    SizedBox(
                      width: 16.0,
                      height: 16.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(42))),
                      ),
                    ),
                    space16,
                    Text("Нийт үнэ"),
                    Spacer(),
                    Text("55000₮"),
                  ],
                ),
                space8,
                Row(
                  children: const [
                    SizedBox(
                      width: 16.0,
                      height: 16.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color(0xFFD2EDF4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(42))),
                      ),
                    ),
                    space16,
                    Text("Хүргэлт"),
                    Spacer(),
                    Text("5000₮"),
                  ],
                ),
                space8,
                Row(
                  children: const [
                    SizedBox(
                      width: 16.0,
                      height: 16.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color(0xFFF2D1CA),
                            borderRadius:
                                BorderRadius.all(Radius.circular(42))),
                      ),
                    ),
                    space16,
                    Text("НӨАТ"),
                    Spacer(),
                    Text("5500₮"),
                  ],
                ),
                space8,
                Row(
                  children: const [
                    SizedBox(
                      width: 16.0,
                      height: 16.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(42))),
                      ),
                    ),
                    space16,
                    Text("Нийт захиалгын үнэ"),
                    Spacer(),
                    Text("65500₮"),
                  ],
                )
              ],
            ),
            space16,
            const OrderButton(
              txt: "Захиалах",
              color: red,
              count: 2,
            )
          ],
        ),
      ),
    );
  }
}
