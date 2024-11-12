import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool isTopLeft = false;

  void _toggleAlignment() {
    setState(() {
      isTopLeft = !isTopLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedAlign'),
      centerTitle: true,
      ),
      body: GestureDetector(
        onTap: _toggleAlignment,
        child: Center(
          child: Container(
            width: 250.0,
            height: 250.0,
            color: Colors.red,
            child: AnimatedAlign(
              alignment: isTopLeft ? Alignment.topLeft : Alignment.bottomRight,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 50.0),
            ),
          ),
        ),
      ),
    );
  }
}

