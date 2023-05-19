import 'package:flutter/material.dart';
import 'package:pizza_app/pages/login_clicked.dart';
import 'package:pizza_app/utils/constants.dart';
import 'package:pizza_app/utils/text_theme.dart';

import '../pages/sign_clicked.dart';
import '../utils/spacing.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
        ),
        child: Column(
          children: [
            const Divider(
              color: gray,
              thickness: 1.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                space8,
                const Text(
                  "Skip",
                  style: TextStyle(color: white),
                ),
                space32,
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginContinue()));
                    },
                    child: const Text("Log In"),
                  ),
                ),
                space16,
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: gray,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignContinue()));
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(color: black),
                    ),
                  ),
                ),
                space32,
                Text(
                  "Skip",
                  style: FontStyles.titleMedium
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                space8
              ],
            ),
            const Divider(
              color: gray,
              thickness: 1.0,
            ),
          ],
        ));
  }
}
