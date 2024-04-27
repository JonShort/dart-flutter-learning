// reccomended to always structure as
// [properties]
// [setters]
// [getters]
// [methods]
class Car {
  Car({required this.color, required this.engine});

  //! attributes
  final String color;
  final String engine;

  //! methods
  void drive() {
    print('$color car is driving...');
  }

  void whichColor() {
    print('car color is $color');
  }
}

void main() {
  Car blueCar = Car(color: "blue", engine: "v8");
  print('${blueCar.color}');
}
