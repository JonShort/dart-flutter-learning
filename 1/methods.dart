// no return value (void)
void pow(int x) {
  final y = x * x;
  print('pow of $x is $y');
}

// curly brackets are "named args"
// required ensures that args are provided at compile-time
int add({required int num1, required int num2}) {
  int result = num1 + num2;
  return result;
}

void main() {
  pow(30);

  final int added = add(num1: 16, num2: 4);

  print('Result of add was $added');
}
