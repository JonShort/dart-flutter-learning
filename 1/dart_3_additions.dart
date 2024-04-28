// This file covers additions to Dart as part of v3

void main() {
  // records - these are like tuples
  final (first, last) = records();
  print(first);
  print(last);

  final String describedDate = describeDate(DateTime.now());
  print(describedDate);

  final soundOfAnimal = whatNoiseDoesThisMake(Sheep());
  print(soundOfAnimal);
}

// New switch syntax is similar to rust match
String describeDate(DateTime dt) => switch (dt.weekday) {
      1 => 'Relaxed after the weekend',
      6 || 7 => 'WEEKEND HURRAY!',
      _ => 'Hang in there...',
    };

(String, String) records() {
  final String firstName = 'Ainsley';
  final String lastName = 'Harriot';

  return (firstName, lastName);
}

String whatNoiseDoesThisMake(Animal animal) => switch (animal) {
      Cow c => '$c moo',
      Sheep s => '$s baa',
      Pig _ => 'oink',
      _ => 'unknown'
    };

sealed class Animal {}

class Cow extends Animal {}

class Sheep extends Animal {}

class Pig extends Animal {}

class Lion extends Animal {}

abstract interface class DoSomething {
  void myMethod();
}

class WeDoSomething extends DoSomething {
  @override
  void myMethod() {
    print('my method');
  }
}
