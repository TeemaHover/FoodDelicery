import 'package:flutter/material.dart';
import 'package:pizza_app/utils/constants.dart';

class OrderButton extends StatelessWidget {
  final String txt;
  final Color color;
  final int count;
  const OrderButton({
    super.key,
    required this.txt,
    required this.color,
    this.count = 1,
  });
  void showSnackBar(BuildContext context) {
    var snackBar = SnackBar(
      content: count == 1
          ? const Text('Ажмилттай сагсанд нэмлээ')
          : const Text('Ажмилттай Захиаллаа'),
      backgroundColor: yellow,
      shape: const StadiumBorder(),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        onPressed: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => const LoginContinue()));
          showSnackBar(context);
        },
        child: Text(txt),
      ),
    );
  }
}
