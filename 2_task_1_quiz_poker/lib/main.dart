import 'package:flutter/material.dart';

const Map<String, String> assetMap = {
  'movies': 'assets/movies.png',
  'music': 'assets/music.png',
  'sports': 'assets/sports.png',
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isLarge = size.width > 600;

    List<Widget> _buildChildren() {
      return const [
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
                'In tennis, who has won the most Grand Slam titles in the Open Era?'),
        SizedBox(
          height: 10,
        ),
        QuestionItem(
            category: 'Movies',
            question: 'In what year was Kill Bill volume 1 released?'),
      ];
    }

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
          child: isLarge
              ? Row(
                  children: _buildChildren(),
                )
              : Column(
                  children: _buildChildren(),
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

  get categoryAssetPath => assetMap[category.toLowerCase()];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(
                categoryAssetPath,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              question,
            ),
          ),
        ],
      ),
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
