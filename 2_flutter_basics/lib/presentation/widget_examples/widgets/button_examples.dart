import 'package:flutter/material.dart';

class ButtonExamples extends StatelessWidget {
  const ButtonExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.blue),
          ),
          onLongPress: () => {print("TextButton longpressed")},
          onPressed: () => {print("TextButton pressed")},
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("TextButton",
                    style: TextStyle(color: Colors.black, fontSize: 20))),
          )),
      IconButton(
          onPressed: () => {print("IconButton pressed")},
          icon: const Icon(Icons.accessible_forward_outlined)),
      Switch(
        value: true,
        onChanged: (value) => {print(value)},
      )
    ]);
  }
}
