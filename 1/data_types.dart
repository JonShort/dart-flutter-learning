void main() {
  bool myBool = true;
  int myInt = 1;
  double myDouble = 0.5;
  String myString = "hello";
  List<int> myList = [1, 2, 3];
  Map<String, String> myMap = {"a": "hello", "b": "world"};

  // final - cannot be changed in this lifecycle after init
  final String greeting = "hello";

  // const - set at compile-time, cannot be changed
  const int constantNum = 15;

  // var - automatic when defining type, otherwise allows type inferrence
  var isVar = true;

  // dynamic - allows the type to change - not good practice
  dynamic dynamicVar = "one";

  // late - signals the variable will be assigned later
  late bool isSet;
  isSet = true;

  print(myBool);
  print(myInt);
  print(myDouble);
  print(myString);
  print(myList);
  print(myMap);

  print(constantNum);
  print(isVar);
  print(dynamicVar);
  print(isSet);

  print("The value of greeting is : $greeting");
}
