import 'package:flutter/material.dart';

class FirstColumnChild extends StatelessWidget {
  const FirstColumnChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Text('First column child'),
      ),
    );
  }
}
