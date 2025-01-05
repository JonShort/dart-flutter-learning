import 'package:flutter/material.dart';

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
