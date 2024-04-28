// contact application using OOP

import 'dart:convert';
import 'dart:io';

class Contact {
  //! properties
  late String _name;
  late String _phoneNumber;

  Contact({required String name, required String phoneNumber}) {
    this._name = name;
    this._phoneNumber = phoneNumber;
  }

  //! setters
  set setName(String n) {
    this._name = n;
  }

  set setPhoneNumber(String n) {
    this._phoneNumber = n;
  }

  //! getters
  String get name => this._name;
  String get phoneNumber => this._phoneNumber;
}

void wr(String s) {
  stdout.writeln(s);
}

/// Throws an [FormatException] if the operation fails.
Contact acceptContactOrThrow() {
  wr('Enter contact name...');
  final String name = stdin.readLineSync(encoding: utf8)!.trim();

  wr('Enter contact phone number...');
  final String phoneNumber = stdin.readLineSync(encoding: utf8)!.trim();

  final created = Contact(name: name, phoneNumber: phoneNumber);
  wr('--- Success! Created ${created.name} ---');

  return created;
}

void addContactOrThrow({required List<Contact> contacts}) {
  final c = acceptContactOrThrow();
  contacts.add(c);
}

void displayContacts({required List<Contact> contacts}) {
  wr('--- Your contacts ---');
  contacts.forEach((c) {
    wr('+ ${c.name} - ${c.phoneNumber}');
  });
}

void displayHelp() {
  wr('-- How to use ---');
  wr('add - add a contact');
  wr('show - show all contacts');
  wr('help - show help');
  wr('exit - exit application');
}

void exitProgram() {
  wr('=== Thanks for using the Contacts application ===');
  wr('');
  exit(0);
}

void REPL({required List<Contact> contacts}) {
  wr('');

  final String cmd = stdin.readLineSync(encoding: utf8)!.trim().toUpperCase();

  wr('');

  switch (cmd) {
    case 'ADD':
      addContactOrThrow(contacts: contacts);
      break;
    case 'SHOW':
      displayContacts(contacts: contacts);
      break;
    case 'HELP':
      displayHelp();
      break;
    case 'EXIT':
      exitProgram();
      break;
    default:
      displayHelp();
  }

  wr('');
}

// note - run this in an external terminal or integrated terminal,
// the debug console is a REPL and errors on input
void main() {
  //! state
  List<Contact> contacts = [];

  wr('=== Contacts on your Command Line ===');
  displayHelp();

  // just loop forever - we handle application exit within REPL
  while (true) {
    try {
      REPL(contacts: contacts);
    } catch (err) {
      print(err);
      wr('The application encountered an unexpected error!');
      exit(1);
    }
  }
}
