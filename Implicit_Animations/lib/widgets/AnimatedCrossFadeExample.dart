import 'package:flutter/material.dart';

class CrossFadeExample extends StatefulWidget {
  const CrossFadeExample({super.key});

  @override
  State<CrossFadeExample> createState() => _CrossFadeExampleState();
}

class _CrossFadeExampleState extends State<CrossFadeExample> {
  bool showFirst = true;

  void _toggleCrossFade() {
    setState(() {
      showFirst = !showFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('AnimatedCrossFade'),
        centerTitle: true,
        ),
        body: GestureDetector(
          onTap: _toggleCrossFade,
          child: Center(
            child: AnimatedCrossFade(
              duration: const Duration(seconds: 1),
              firstChild: Container(color: Colors.red, height: 100.0, width: 100.0),
              secondChild: Container(color: Colors.blue, height: 200.0, width: 200.0),
              crossFadeState:
                  showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
          ),
      ),
    );
  }
}