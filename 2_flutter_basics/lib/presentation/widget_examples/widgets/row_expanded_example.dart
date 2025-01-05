import 'package:flutter/material.dart';

class RowExpandedExample extends StatelessWidget {
  const RowExpandedExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
