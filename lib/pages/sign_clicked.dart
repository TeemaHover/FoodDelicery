import 'package:flutter/material.dart';

import '../components/sign_in_header.dart';
import '../widget/sign_form.dart';

class SignContinue extends StatefulWidget {
  const SignContinue({super.key});

  @override
  State<SignContinue> createState() => _SignContinueState();
}

class _SignContinueState extends State<SignContinue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [SignInHeader(), SignForm()],
        ),
      ),
    ));
  }
}
