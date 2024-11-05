import 'package:flutter/material.dart';

class Rotation extends StatefulWidget {
  const Rotation({super.key});

  @override
  State<Rotation> createState() => RotationState();
}

class RotationState extends State<Rotation> {
  //Track rotation
  double turns = 0.0;

  void _changeRotation() {
    //Rotate by 90 degrees
    setState(() => turns += 1.0 / 4.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _changeRotation,
          child: const Text('Rotate Logo'),
        ),
        Padding(
          padding: const EdgeInsets.all(50),
          child: AnimatedRotation(
            turns: turns,
            duration: const Duration(seconds: 1),
            child: const FlutterLogo(),
          ),
        ),
      ],
    );
  }
}
