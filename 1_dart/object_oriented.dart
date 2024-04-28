// reccomended to always structure as
// [properties]
// [setters]
// [getters]
// [methods]
class Car {
  //! attributes
  late String _color;

  //! setters
  set setColor(String color) {
    // validation here
    this._color = color;
  }

  //! getters
  String get color => this._color;

  //! methods
  void drive() {
    print('$_color car is driving...');
  }

  void whichColor() {
    print('car color is $_color');
  }
}

void main() {
  final Car car1 = Car();
  car1.setColor = 'red';

  final Car car2 = Car();
  car2.setColor = 'blue';

  String colorForCar1 = car1.color;
  String colorForCar2 = car2.color;

  print('car 1 is $colorForCar1');
  print('car 2 is $colorForCar2');
  car1.drive();
}
