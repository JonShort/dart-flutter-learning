import 'package:flutter/material.dart';

// Ink - gesture callbacks with animations / styling on action
// GestureDectector - gesture callbacks

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final Color iconColor;
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Ink(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.yellow, Colors.green]),
            ),
            child: InkWell(
                onTap: onTap,
                splashColor: Colors.blue,
                customBorder: const CircleBorder(),
                child: Center(child: Icon(icon, color: iconColor)))));
  }
}

class CustomButtonGesture extends StatelessWidget {
  final Function() onTap;
  final String text;
  const CustomButtonGesture(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 100,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.orange, Colors.lightBlue]),
        ),
        child: Center(child: Text(text)),
      ),
    );
  }
}
