import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 300,
      width: 300,
      child: LayoutBuilder(builder: (context, constraints) {
        return Center(
          child: Container(
              height: constraints.maxHeight / 2,
              width: constraints.maxWidth / 2,
              color: Colors.green,
              child: const Center(child: Text('LayoutBuilder example'))),
        );
      }),
    );
  }
}
