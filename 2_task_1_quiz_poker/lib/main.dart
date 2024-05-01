import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.amber)),
      // Scaffold is a basic layout
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Quiz Poker'),
        ),
        body: Container(
          color: Colors.pink,
          child: const Column(
            children: [
              QuestionItem(
                  category: 'Sports',
                  question:
                      'Who holds the record for the most goals scored in a single World Cup tournament?'),
              SizedBox(
                height: 10,
              ),
              QuestionItem(
                  category: 'Sports',
                  question:
                      'In tennis, who has won the most Grand Slam titles in the Open Era?')
            ],
          ),
        ),
        floatingActionButton: const MyButton(),
      ),
    );
  }
}

class QuestionItem extends StatelessWidget {
  const QuestionItem(
      {super.key, required this.category, required this.question});

  final String category;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(category),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: Text(question),
        ),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              duration: const Duration(seconds: 2),
              content: const Text('Hello!'),
              action:
                  SnackBarAction(label: 'The snackbar', onPressed: () => {})),
        );
      },
      child: const Icon(Icons.check),
    );
  }
}
