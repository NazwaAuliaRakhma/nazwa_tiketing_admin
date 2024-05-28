import 'package:flutter/material.dart';

class AppbarTitle extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry? margin;

  const AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
