import 'package:car_app/screens/Home/car_home_screen.dart';
import 'package:car_app/screens/Home/detail/car_detail_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: CarHomeScreen(),
      home: CarDetailScreen(),
    );
  }
}
