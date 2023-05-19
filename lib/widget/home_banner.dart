import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/spacing.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        space16,
        const Divider(
          color: orange,
          height: 10,
          thickness: 2,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              space16,
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/banner.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              space16,
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/banner.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              space16,
            ],
          ),
        ),
        const Divider(
          height: 20,
          thickness: 5,
          color: gray,
        ),
      ],
    ));
  }
}
