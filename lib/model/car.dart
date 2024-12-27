class Car {
  String image;
  int price;
  String brand;
  String model;
  String co2;
  String fuelCons;

  Car(
    this.image,
    this.price,
    this.brand,
    this.model,
    this.co2,
    this.fuelCons,
  );
}

List<Car> carList = [
  Car('images/bentley.png', 120, 'Bentley', '3A 9200', '77/km', '5,5 L'),
  Car('images/rolls_roys.png', 185, 'RR', '3A 9200', '77/km', '5,5 L'),
  Car('images/mercedes.png', 100, 'Mercedes', '3A 9200', '77/km', '5,5 L'),
  Car('images/audi.png', 90, 'Audi', '3A 9200', '77/km', '5,5 L'),
  Car('images/bmw.png', 80, 'BMW', '3A 9200', '77/km', '5,5 L'),
];
