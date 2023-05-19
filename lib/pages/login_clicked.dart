import 'package:flutter/material.dart';
import 'package:pizza_app/components/sign_in_header.dart';
import 'package:pizza_app/widget/login_form.dart';

class LoginContinue extends StatefulWidget {
  const LoginContinue({super.key});

  @override
  State<LoginContinue> createState() => _LoginContinueState();
}

class _LoginContinueState extends State<LoginContinue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [SignInHeader(), LoginForm()],
      ),
    ));
  }
}
