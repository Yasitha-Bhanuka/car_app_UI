import 'package:car_app/constants.dart';
import 'package:flutter/material.dart';

class CarHomeScreen extends StatelessWidget {
  const CarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Available Car',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
        backgroundColor: backgroundColor,
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          SizedBox(width: 20)
        ],
      ),
    );
  }
}
