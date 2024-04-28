// contact application using OOP

import 'dart:convert';
import 'dart:io';
import 'dart:math';

void wr(String s) {
  stdout.writeln(s);
}

class Hangman {
  final List<String> _availableWords = [
    'database',
    'elephant',
    'hospital',
    'mountain',
    'notebook',
    'operator',
    'painting',
    'question',
    'sunshine',
    'teaching',
  ];

  // state for gameplay
  String _availableLetters = 'abcdefghijklmnopqrstuvwxyz';
  int _availableLives = 10;
  int _numberOfGuesses = 0;
  late String _goalWord;
  String _currentGuessesRepresentation = '';

  Hangman() {
    // pick from available words
    final rng = Random();
    final wordIdx = rng.nextInt(_availableWords.length);
    this._goalWord = _availableWords[wordIdx];

    // setup the representation to the user
    this._currentGuessesRepresentation =
        this._currentGuessesRepresentation.padRight(_goalWord.length, '_');
  }

  bool get isWinner =>
      this._currentGuessesRepresentation.length > 0 &&
      !this._currentGuessesRepresentation.contains('_');
  bool get isLoser => this._availableLives <= 0;
  int get remainingLives => this._availableLives;
  String get remainingLetters => this._availableLetters;
  String get wordProgress => this._currentGuessesRepresentation;
  int get numberOfGuesses => this._numberOfGuesses;

  _checkLetterAndUpdateRepresentations(String letter) {
    List<int> letterFoundIndexes = [];

    for (int i = 0; i < this._goalWord.length; i += 1) {
      String currentGoalLetter = this._goalWord.substring(i, i + 1);

      if (currentGoalLetter != letter) {
        continue;
      }

      letterFoundIndexes.add(i);
    }

    if (letterFoundIndexes.length <= 0) {
      this._availableLives -= 1;
      return;
    }

    // adjust the available letters representation
    this._availableLetters = this._availableLetters.replaceFirst(letter, '_');

    letterFoundIndexes.forEach((i) {
      this._currentGuessesRepresentation =
          this._currentGuessesRepresentation.replaceRange(i, i + 1, letter);
    });
  }

  displayLossInformation() {
    wr('--- You Lose! ---');
    wr('Your lives reached 0!');
    wr('Number of guesses: ${this.numberOfGuesses}');
    wr('The word was: ${this._goalWord}');
    wr('Your progress was: ${this._currentGuessesRepresentation}');
    wr('');
  }

  displayWinInformation() {
    wr('--- You Win! ---');
    wr('Number of guesses: ${this.numberOfGuesses}');
    wr('Remaining lives: ${this.remainingLives}');
    wr('You successfully guessed the word: ${this._goalWord}');
    wr('');
  }

  guess({required String letter}) {
    this._numberOfGuesses += 1;

    final String parsedLetter = letter.trim().toLowerCase();

    if (parsedLetter.length > 1) {
      wr('Too many letters entered! You lose one life');
      this._availableLives -= 1;
      return;
    }

    this._checkLetterAndUpdateRepresentations(letter);
  }
}

void exitProgram() {
  wr('=== Thanks for playing! ===');
  wr('');
  exit(0);
}

void REPL({required Hangman game}) {
  if (game.isLoser) {
    game.displayLossInformation();
    exitProgram();
  }

  if (game.isWinner) {
    game.displayWinInformation();
    exitProgram();
  }

  wr('current lives: ${game.remainingLives}');
  wr('letters available: ${game.remainingLetters}');
  wr('current word progress: ${game.wordProgress}');

  wr('');

  wr('Enter a letter...');
  final String letter =
      stdin.readLineSync(encoding: utf8)!.trim().toLowerCase();

  game.guess(letter: letter);

  wr('');
}

// note - run this in an external terminal or integrated terminal,
// the debug console is a REPL and errors on input
void main() {
  final currentHangmanGame = Hangman();

  wr('=== HANGMAN ===');
  wr('');

  // just loop forever - we handle application exit within REPL
  while (true) {
    try {
      REPL(game: currentHangmanGame);
    } catch (err) {
      print(err);
      wr('The application encountered an unexpected error!');
      exit(1);
    }
  }
}
