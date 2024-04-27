import 'dart:convert';
import 'dart:io';
import 'dart:math';

/// Throws an [FormatException] if the operation fails.
int acceptInputOrThrow() {
  stdout.writeln('Take a guess...');
  String? entry = stdin.readLineSync(encoding: utf8);
  return int.parse(entry!);
}

// note - run this in an external terminal or integrated terminal,
// the debug console is a REPL and errors on input
void main() {
  final Random rng = new Random();
  final int randomInt = rng.nextInt(10) + 1; // will be between 1 and 10
  bool isCorrect = false;
  int guessNum = 0;

  stdout.writeln('=== Guess the random number (between 1 and 10) ===');

  while (!isCorrect) {
    guessNum += 1;
    late int entryInt;

    try {
      entryInt = acceptInputOrThrow();
    } catch (err) {
      stdout
          .writeln('Invalid entry - please try again entering a valid number');
      stdout.writeln('');
      continue;
    }

    if (entryInt == randomInt) {
      final String guessWord = (guessNum == 1) ? 'guess' : 'guesses';
      stdout.writeln('Correct! The number was $randomInt');
      stdout.writeln('');
      stdout.writeln('You guessed the number in $guessNum $guessWord');
      isCorrect = true;
    } else {
      final String hint = (entryInt > randomInt) ? 'less than' : 'greater than';
      stdout.writeln('Wrong! Hint - the number is $hint $entryInt');
      stdout.writeln('');
    }
  }

  stdout.writeln('Thanks for playing!');
}
