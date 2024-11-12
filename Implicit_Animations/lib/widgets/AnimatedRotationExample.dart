import 'package:flutter/material.dart';

class AnimatedRotationExample extends StatefulWidget {
  const AnimatedRotationExample({super.key});

  @override
  State<AnimatedRotationExample> createState() => RotationState();
}

class RotationState extends State<AnimatedRotationExample> {
  //Track rotation
  double turns = 0.0;

  void _changeRotation() {
    //Rotate by 90 degrees
    setState(() => turns += 1.0 / 4.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedRotation'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
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
                //milliseconds: 500
                duration: const Duration(seconds: 1),
                //bounceOut
                curve: Curves.linear,
                //topLeft
                alignment: Alignment.center,
                child: const FlutterLogo(
                  size: 200.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
