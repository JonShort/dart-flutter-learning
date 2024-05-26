import 'package:flutter/material.dart';

const Map<String, String> assetMap = {
  'movies': 'assets/movies.png',
  'music': 'assets/music.png',
  'sports': 'assets/sports.png',
};

void main() {
  runApp(const MyApp());
}

const double spacing = 30;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isLarge = size.width > 600;
    final pageScrollDirection = isLarge ? Axis.horizontal : Axis.vertical;

    List<Widget> buildChildren() {
      return const [
        SizedBox(
          height: spacing,
          width: spacing,
        ),
        QuestionItem(
            category: 'Sports',
            question:
                'Who holds the record for the most goals scored in a single World Cup tournament?'),
        SizedBox(
          height: spacing,
          width: spacing,
        ),
        QuestionItem(
            category: 'Sports',
            question:
                'In tennis, who has won the most Grand Slam titles in the Open Era?'),
        SizedBox(
          height: spacing,
          width: spacing,
        ),
        QuestionItem(
            category: 'Sports',
            question: 'Which football team won the 2022 world cup?'),
        SizedBox(
          height: spacing,
          width: spacing,
        ),
        QuestionItem(
            category: 'Sports',
            question:
                'In which year did Roger Federer win his first Wimbledon title?'),
        SizedBox(
          height: spacing,
          width: spacing,
        ),
        QuestionItem(
            category: 'Movies',
            question: 'In what year was Kill Bill volume 1 released?'),
        SizedBox(
          height: spacing,
          width: spacing,
        ),
        QuestionItem(
            category: 'Movies',
            question: 'Where is the film "La la land" set?'),
        SizedBox(
          height: spacing,
          width: spacing,
        ),
        QuestionItem(
            category: 'Movies', question: 'In what season is Die Hard set?'),
        SizedBox(
          height: spacing,
          width: spacing,
        ),
        QuestionItem(
            category: 'Movies',
            question: 'What was Quentin Tarantino\'s first major film?'),
        SizedBox(
          height: spacing,
          width: spacing,
        ),
        QuestionItem(
            category: 'Music',
            question: 'Who sang "hit me baby one more time"?'),
        SizedBox(
          height: spacing,
          width: spacing,
        ),
        QuestionItem(
            category: 'Music',
            question: 'Which band created the song "Enter Sandman"?'),
        SizedBox(
          height: spacing,
          width: spacing,
        ),
        QuestionItem(
            category: 'Music',
            question: 'Miley Cyrus is daughter to which country music star?'),
        SizedBox(
          height: spacing,
          width: spacing,
        ),
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
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            scrollDirection: pageScrollDirection,
            child: isLarge
                ? Row(children: buildChildren())
                : Column(
                    children: buildChildren(),
                  ),
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
    final size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        height: 200,
        width: 300,
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
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
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
