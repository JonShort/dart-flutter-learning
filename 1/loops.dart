// available loops
// = while
// = do while
// = for
// = for each

void whileLoop() {
  int number = 1;

  while (number < 100) {
    print('current number is $number');
    number += 2; // short version of number = number + 2
  }

  print('number after the while is $number');
}

void doWhileLoop() {
  // exec until condition is fulfilled
  // do-while is guaranteed to run once
  // called "foot controlled"
  // Checks the condition at the _end_ of a loop

  int number = 1;

  do {
    print('current number is $number');
    number += 1;
  } while (number < 6);
}

void forLoop() {
  // counter (index) required, generally init within the for

  final List<int> numbersList = [3, 4, 5, 6, 7, 5, 3];
  List<int> secondList = [];

  for (int i = 0; i < numbersList.length; i += 1) {
    if (numbersList[i] == 3) {
      secondList.add(numbersList[i]);
    }

    print('list element ${numbersList[i]}');
  }

  print('second list: $secondList');
}

void forEachLoop() {
  // applied against iterable - e.g. List, Map, Set
  // While iterating through a List, the List cannot be manipulated

  final List<int> numbersList = [3, 4, 5, 6, 7, 5, 3];
  List<int> secondList = [];

  numbersList.forEach((n) {
    if (n == 3) {
      secondList.add(n);
    }

    print('list element $n');
  });

  print('second list: $secondList');
}

void main() {
  // whileLoop();
  // doWhileLoop();
  // forLoop();
  forEachLoop();
}
