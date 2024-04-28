import 'dart:convert';
import 'dart:io';

// note - run this in an external terminal or integrated terminal,
// the debug console is a REPL and errors on input
void main() {
  stdout.writeln('Enter a number...');
  String? entry = stdin.readLineSync(encoding: utf8);

  late int entryInt;
  try {
    entryInt = int.tryParse(entry!)!;
  } catch (err) {
    print('Invalid entry - please try again entering a valid number');
    exit(1);
  }

  int i = entryInt;
  int result = entryInt;
  while (i > 1) {
    i -= 1;
    result = result * i;
  }

  stdout.writeln('You entered: $entryInt');
  stdout.writeln('The factorial is $result');
}
