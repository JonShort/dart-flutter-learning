void main() {
  int age = 16;

  print('user is $age years old');

  if (age >= 18) {
    print('You can enter the movie');
  } else if (age >= 16) {
    print('You can enter the movie with a guardian');
  } else {
    print('You cannot enter the movie');
  }
}
