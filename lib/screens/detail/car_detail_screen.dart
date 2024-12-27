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
            "assets/images/map.jpg",
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
                      children: [
                        CarInformation(),
                        Divider(
                          height: 15,
                          color: Colors.white70,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/driver.jpg",
                              width: 100,
                            ),
                            SizedBox(width: 15),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Sithsara Nayana',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          'License No: 123456789',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '369',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Ride',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12),
                                Row(
                                  children: [
                                    Text(
                                      '5.0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.star,
                                        color: Colors.white, size: 16),
                                    Icon(Icons.star,
                                        color: Colors.white, size: 16),
                                    Icon(Icons.star,
                                        color: Colors.white, size: 16),
                                    Icon(Icons.star,
                                        color: Colors.white, size: 16),
                                    Icon(Icons.star,
                                        color: Colors.white, size: 16),
                                  ],
                                )
                              ],
                            ))
                          ],
                        )
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

  Column CarInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "\$${car.price.toString()}",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
          "price/hr",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CarItems(
              name: "Brand",
              value: car.brand,
              textColor: Colors.black,
            ),
            CarItems(
              name: "Model No",
              value: car.model,
              textColor: Colors.black,
            ),
            CarItems(
              name: "CO2",
              value: car.co2,
              textColor: Colors.black,
            ),
            CarItems(
              name: "Fuel Cons",
              value: car.fuelCons,
              textColor: Colors.black,
            ),
          ],
        ),
      ],
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
