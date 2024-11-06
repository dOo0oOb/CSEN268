import 'package:flutter/material.dart';

import '../widgets/AnimatedSwitcherExample.dart';
import '../widgets/AnimatedAlign.dart';

import '../widgets/padded_text.dart';
import '../widgets/AnimatedRotation.dart';
import '../widgets/AnimatedContainer.dart';
import '../widgets/AnimatedOpacity.dart';
import '../widgets/AnimatedAlign.dart';
import '../widgets/AnimatedCrossFade.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200, // Give a fixed height or wrap with Flexible
              child: AnimatedSwitcherExample(),
            ),
            SizedBox(
              height: 200,
              child: Rotation(),
            ),
            SizedBox(
              height: 200,
              child: AnimatedContainerExampleApp(),
            ),
            SizedBox(
              height: 200,
              child: CombinedOpacityExampleApp(),
            ),
            SizedBox(
              height: 200,
              child: AnimatedAlignExampleApp(),
            ),
            SizedBox(
              height: 200,
              child: CrossFadeExampleApp(),
            ),
          ],
        ),
      ),
    );
  }
}
