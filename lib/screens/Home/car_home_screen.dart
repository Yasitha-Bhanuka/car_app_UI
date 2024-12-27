import 'package:car_app/common/card_list.dart';
import 'package:car_app/constants.dart';
import 'package:car_app/model/car.dart';
import 'package:car_app/screens/detail/car_detail_screen.dart';
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
        itemCount: carList.length,
        itemBuilder: (context, index) {
          final car = carList[index];
          return GestureDetector(
            onTap: () {
              // for navigating
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CarDetailScreen(
                            car: car,
                          )));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$${car.price.toString()}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "price/hr",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CarItems(name: "Brand", value: car.brand),
                            CarItems(name: "Model No", value: car.model),
                            CarItems(name: "CO2", value: car.co2),
                            CarItems(name: "Fuel Cons", value: car.fuelCons),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 30,
                    child: Image.asset(car.image, width: 200, height: 120),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
