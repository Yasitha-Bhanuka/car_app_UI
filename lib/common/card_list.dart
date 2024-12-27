import 'package:flutter/material.dart';

class CarItems extends StatelessWidget {
  final String name, value;
  final Color textColor;

  const CarItems(
      {super.key,
      required this.name,
      required this.value,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          name,
          style: TextStyle(
              color: textColor, fontSize: 12, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
