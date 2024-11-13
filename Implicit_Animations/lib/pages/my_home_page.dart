import 'package:flutter/material.dart';

import '../widgets/AnimatedAlignExample.dart';
import '../widgets/AnimatedContainerExample.dart';
import '../widgets/AnimatedCrossFadeExample.dart';
import '../widgets/AnimatedOpacityExample.dart';
import '../widgets/AnimatedRotationExample.dart';
import '../widgets/AnimatedSwitcherExample.dart';
import '../widgets/HeroExample.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title,}) : super(key: key);
  final String title;

  final List<Widget> animationExamples = [
    const AnimatedContainerExample(),
    const CombinedOpacityExample(),
    const AnimatedAlignExample(),
    const AnimatedRotationExample(),
    const CrossFadeExample(),
    const AnimatedSwitcherExample(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animation Examples'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: animationExamples.length,
        itemBuilder: (context, index) {
          final widgetName = animationExamples[index].runtimeType.toString();
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Card(
              color: const Color.fromARGB(255, 179, 206, 234),
              child: ListTile(
                title: Text(widgetName),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => animationExamples[index]),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}