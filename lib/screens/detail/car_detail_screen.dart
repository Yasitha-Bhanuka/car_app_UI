import 'package:car_app/common/card_list.dart';
import 'package:car_app/constants.dart';
import 'package:car_app/model/car.dart';
import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen({super.key, required this.car});
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/map.png",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          // for back button, name and menu icon
          CarDetailAppbar(context),
          Positioned(
              left: 10,
              right: 10,
              bottom: 25,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(top: 45),
                    decoration: BoxDecoration(
                      color: backgroundColor,
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
                    right: 40,
                    child: Image.asset(
                      car.image,
                      height: 130,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  SafeArea CarDetailAppbar(BuildContext context) {
    return SafeArea(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Text(
          "Car Details",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ));
  }
}
