import 'package:flutter/material.dart';

import '../components/main_button.dart';
import '../pages/home/home.dart';
import '../utils/constants.dart';
import '../utils/spacing.dart';
import '../utils/text_theme.dart';

class SignForm extends StatelessWidget {
  const SignForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "First Name",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Last Name",
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Mobile Number",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
            ),
            space16,
            Text(
              "By registering, you confirm you have read and agree to the Terms and Conditions and Privacy Policy.",
              style: FontStyles.titleMedium.copyWith(color: textGray),
            ),
            space16,
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
                child: const Text("Sign up"),
              ),
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
      ),
    );
  }
}
