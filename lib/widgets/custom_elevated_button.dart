import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double width;
  final String text;
  final VoidCallback? onPressed;

  const CustomElevatedButton({
    Key? key,
    required this.width,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.yellow,
          onPrimary: Colors.white,
        ),
        child: Text(text),
      ),
    );
  }
}
