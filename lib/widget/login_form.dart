import 'package:flutter/material.dart';
import 'package:pizza_app/components/main_button.dart';
import 'package:pizza_app/pages/home/home.dart';
import 'package:pizza_app/utils/text_theme.dart';

import '../utils/constants.dart';
import '../utils/spacing.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: const Text("Continue to Login"),
            ),
          ),
          space16,
          Text(
            "By continuing with the sign in process, we may send you a one-time verification code via text message to the phone number associated with your account. Message and data rates may apply.",
            style: FontStyles.titleMedium.copyWith(color: textGray),
          ),
          space16,
          Text("or", style: FontStyles.titleMedium.copyWith(color: textGray)),
          space16,
          const MainButton(
            txt: "Continue with Google",
            color: lightblue,
            icon: Icons.email,
          ),
          const MainButton(
            txt: "Continue with Facebook",
            color: blue,
            icon: Icons.facebook,
          ),
          const MainButton(
            txt: "Continue with Apple",
            color: black,
            icon: Icons.apple,
          ),
        ],
      ),
    );
  }
}
