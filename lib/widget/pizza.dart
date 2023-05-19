import 'package:flutter/material.dart';
import 'package:pizza_app/components/order_button.dart';
import 'package:pizza_app/utils/constants.dart';

import '../utils/spacing.dart';
import '../utils/text_theme.dart';

class Pizza extends StatefulWidget {
  final String title;
  final String desc;
  final String image;
  const Pizza(
      {super.key,
      required this.title,
      required this.desc,
      required this.image});

  @override
  State<Pizza> createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Том';
    return Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title,
                        style: FontStyles.titleMedium
                            .copyWith(fontWeight: FontWeight.bold)),
                    space16,
                    Text(widget.desc,
                        style:
                            FontStyles.titleMedium.copyWith(color: textGray)),
                  ],
                ),
              ),
              space16,
              Image.asset(
                widget.image,
                width: MediaQuery.of(context).size.width * 0.35,
                height: 150,
              )
            ],
          ),
          space32,
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: DropdownButtonFormField(
              isDense: true,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  fillColor: Colors.transparent),
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 16,
              items: <String>['Том', 'Дунд', 'Жижиг']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 16),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              style: const TextStyle(color: black),
            ),
          ),
          space16,
          const OrderButton(txt: "Сагсанд хийх (37000₮)", color: red),
          space16,
          const Divider(
            height: 10,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
