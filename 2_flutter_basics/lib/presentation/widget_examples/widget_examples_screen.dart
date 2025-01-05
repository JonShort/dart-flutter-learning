import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/components/custom_button.dart';
import 'package:flutter_basics/presentation/widget_examples/widgets/airball.dart';
import 'package:flutter_basics/presentation/widget_examples/widgets/button_examples.dart';
import 'package:flutter_basics/presentation/widget_examples/widgets/first_column_child.dart';
import 'package:flutter_basics/presentation/widget_examples/widgets/hello_world.dart';
import 'package:flutter_basics/presentation/widget_examples/widgets/layout_builder_example.dart';
import 'package:flutter_basics/presentation/widget_examples/widgets/media_query_example.dart';
import 'package:flutter_basics/presentation/widget_examples/widgets/my_avatar.dart';
import 'package:flutter_basics/presentation/widget_examples/widgets/row_expanded_example.dart';

// Match widget name to file name
// One Widget per file
// Screen file should only contain layout
class WidgetExamplesScreen extends StatelessWidget {
  const WidgetExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const SizedBox(
                height: 20,
              ),
              const RowExpandedExample(),
              const SizedBox(
                height: 20,
              ),
              const FirstColumnChild(),
              const SizedBox(
                height: 20,
              ),
              const HelloWorld(),
              const SizedBox(
                height: 20,
              ),
              const Airball(),
              const SizedBox(
                height: 20,
              ),
              const MyAvatar(),
              const SizedBox(
                height: 40,
              ),
              const MediaQueryExample(),
              const SizedBox(
                height: 40,
              ),
              const LayoutBuilderExample(),
              const SizedBox(
                height: 40,
              ),
              const ButtonExamples(),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  onTap: () => {print('home tapped')},
                  icon: Icons.home,
                  iconColor: Colors.white),
              const SizedBox(height: 20),
              CustomButton(
                  onTap: () => {print('play tapped')},
                  icon: Icons.play_arrow,
                  iconColor: Colors.teal),
              const SizedBox(height: 20),
              CustomButtonGesture(
                onTap: () => {print('gesture button tapped')},
                text: "Gesture!",
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('clicked'),
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
