import 'package:flutter/material.dart';
import 'package:pizza_app/utils/constants.dart';
import 'package:pizza_app/utils/text_theme.dart';
import 'package:pizza_app/widget/food_collection.dart';

import '../../utils/spacing.dart';
import '../../widget/pizza.dart';

class Place extends StatefulWidget {
  const Place({super.key});

  @override
  State<Place> createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          flexibleSpace: Image.asset(
            "assets/images/appbarBg.png",
            fit: BoxFit.cover,
          ),
          toolbarHeight: 170,
        ),
        body: DefaultTabController(
          length: 4,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                  Widget>[
            space16,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Pizza Hut",
                  style: FontStyles.bodyMedium,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text("4.5",
                        style:
                            FontStyles.titleMedium.copyWith(color: textGray)),
                    const Icon(Icons.star, color: yellow),
                  ],
                ),
                Text(
                  "3.6km . 30min . 5000₮ Delivery fee",
                  style: FontStyles.titleMedium.copyWith(color: textGray),
                ),
              ],
            ),
            space16,
            Container(
              child: TabBar(
                labelColor: black,
                indicatorColor: red,
                unselectedLabelColor: textGray,
                tabs: [
                  Tab(
                    child: Text(
                      'Багц',
                      style: FontStyles.titleLarge
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Пицца',
                      style: FontStyles.titleLarge
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Нэмэлт',
                      style: FontStyles.titleLarge
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Ундаа',
                      style: FontStyles.titleLarge
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 400, //height of TabBarView
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.5))),
                child: TabBarView(children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.07,
                          vertical: 16),
                      child: SingleChildScrollView(
                        child: Column(
                          children: const [
                            FoodCollection(
                              title: "Дэтройд комбо",
                              price: "42000₮",
                              desc:
                                  "Детройт пицца, 4ш Хашбраун, 6ш Бүрж шарсан сонгино. Онлайнаар захиалбал наггетс бэлэглэнэ.",
                            )
                          ],
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.07,
                          vertical: 16),
                      child: SingleChildScrollView(
                        child: Column(
                          children: const [
                            Pizza(
                              title: "Зайдсан дэлбээт",
                              desc:
                                  "Зайдсан захтай, Моццералла бяслаг, Тахиан мах, Ногоон чинжүү, Улаан чинжүү, Хэрчсэн мөөг, Үрлэн помидор, Шарсан төмс",
                              image: "assets/images/pizza_food.png",
                            ),
                          ],
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.07,
                        vertical: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: const [
                          Pizza(
                              title: "Тахианы далавчны бугалга",
                              desc:
                                  "Барбекью соусаар амталсан тахианы бугалга 6ш",
                              image: "assets/images/chicken.png"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.07,
                        vertical: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: const [
                          Pizza(
                              title: "Тахианы далавчны бугалга",
                              desc:
                                  "Барбекью соусаар амталсан тахианы бугалга 6ш",
                              image: "assets/images/cola.png"),
                        ],
                      ),
                    ),
                  ),
                ]))
          ]),
        ));
  }
}
