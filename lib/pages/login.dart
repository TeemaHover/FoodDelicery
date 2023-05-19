import 'package:flutter/material.dart';
import 'package:pizza_app/components/main_button.dart';
import 'package:pizza_app/utils/constants.dart';
import 'package:pizza_app/utils/spacing.dart';
import 'package:pizza_app/utils/text_theme.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Image(
              image: AssetImage('assets/images/loginBgCut.png'),
              width: double.infinity,
            ),
            space64,
            Center(
              child: Text(
                "Discover more from your neighborhood!",
                style: FontStyles.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
            MainButton(
              txt: "Continue with Email",
              color: red,
              icon: Icons.email,
            ),
            MainButton(
              txt: "Continue with Google",
              color: lightblue,
              icon: Icons.email,
            ),
            MainButton(
              txt: "Continue with Facebook",
              color: blue,
              icon: Icons.facebook,
            ),
            MainButton(
              txt: "Continue with Apple",
              color: black,
              icon: Icons.apple,
            ),
            space32,
            Text(
              "Search Nearby",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            space32,
            Divider(
              color: Colors.black,
            ),
            space16,
            Text(
              "By tapping Search Nearby or Continue with Email, Google, Facebook, Apple, you agree to FoodieExpress’s Terms & Conditions and Privacy Policiy. ",
              style: TextStyle(),
              textAlign: TextAlign.center,
            ),
            space64,
          ],
        ),
      ),
    );
  }
}
