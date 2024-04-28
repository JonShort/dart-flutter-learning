// By default, Dart types do not accept nulls

void main() {
  int nonNullable = 10; // cannot be null
  int? nullableInt = null; // can be null

  // fails
  // nonNullable = null;

  // late as a dangerous approach - especially for avoiding nullchecks
  late String description;
  // can't use late here because not initialized yet
  // print(description);
  description = 'desc'; // initialized

  // non-nullable assertion operator
  // ! - accept runtime errors if we are wrong
  // would error in this case as it is null
  // int value = nullableInt!;

  int value2 = nullableInt ?? 1;

  String? nullableString = null;
  int stringLength = nullableString?.length ?? 0;

  print(nonNullable);
  print(nullableInt);
  print(description);
  print(value2);
  print(stringLength);
}
