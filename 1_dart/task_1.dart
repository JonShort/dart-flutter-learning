import 'dart:convert';
import 'dart:io';

// note - run this in an external terminal or integrated terminal,
// the debug console is a REPL and errors on input
void main() {
  stdout.writeln('Enter a phrase...');
  String? entry = stdin.readLineSync(encoding: utf8);
  stdout.writeln('You entered: $entry');
}
