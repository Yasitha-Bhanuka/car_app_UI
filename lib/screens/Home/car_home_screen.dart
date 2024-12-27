import 'package:car_app/constants.dart';
import 'package:car_app/model/car.dart';
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
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (context, index) {
          final car = carList[index];
          return GestureDetector(
            onTap: () {},
            child: Container(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 24, right: 24, top: 50),
                    padding: EdgeInsets.only(
                        left: 25, top: 10, right: 20, bottom: 15),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "\$${car.price.toString()}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
