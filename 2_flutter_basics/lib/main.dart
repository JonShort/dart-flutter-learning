import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

// "Everything is a widget"

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
          title: const Text('Flutter Basics'),
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Flexible(
                      flex: 2,
                      child: Text(
                        'Some text here - even longer this time. This part may even wrap!',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(width: 20, height: 20, color: Colors.green),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.green,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('First column child'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      'Hello world!',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    SizedBox(
                        width: 200,
                        height: 100,
                        child: Image.asset(
                          'assets/airball.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        )),
                    const Positioned(
                      bottom: 0,
                      right: 0,
                      child: Text(
                        'Airball image',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/21317379?v=4'))),
                const SizedBox(
                  height: 40,
                ),
                const MediaQueryExample(),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  color: Colors.yellow,
                  height: 300,
                  width: 300,
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Center(
                      child: Container(
                          height: constraints.maxHeight / 2,
                          width: constraints.maxWidth / 2,
                          color: Colors.green,
                          child: const Center(
                              child: Text('LayoutBuilder example'))),
                    );
                  }),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint('clicked'),
          child: const Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height / 5,
        width: size.width / 2,
        color: Colors.green,
        child: const Center(child: Text('MediaQuery Example')));
  }
}
