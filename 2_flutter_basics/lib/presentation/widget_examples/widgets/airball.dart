import 'package:flutter/material.dart';

class Airball extends StatelessWidget {
  const Airball({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
