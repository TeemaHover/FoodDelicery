import 'package:flutter/material.dart';

import '../pages/login_clicked.dart';

class MainButton extends StatelessWidget {
  final String txt;
  final Color color;
  final IconData icon;
  const MainButton(
      {super.key,
      required this.txt,
      required this.color,
      this.icon = Icons.abc});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginContinue()));
        },
        icon: icon == Icons.abc ? const Icon(null) : Icon(icon),
        label: Text(txt),
      ),
    );
  }
}
