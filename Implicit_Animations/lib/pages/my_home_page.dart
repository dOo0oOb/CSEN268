// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../widgets/AnimatedAlignExample.dart';
import '../widgets/AnimatedContainerExample.dart';
import '../widgets/AnimatedCrossFadeExample.dart';
import '../widgets/AnimatedOpacityExample.dart';
import '../widgets/AnimatedRotationExample.dart';
import '../widgets/AnimatedSwitcherExample.dart';
import '../widgets/AnimatedAlign.dart';

import '../widgets/padded_text.dart';
import '../widgets/AnimatedRotation.dart';
import '../widgets/AnimatedContainer.dart';
import '../widgets/AnimatedOpacity.dart';
import '../widgets/AnimatedAlign.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  final List<Widget> animationExamples = [
    const AnimatedSwitcherExample(),
    const HeroExample(),
    const AnimatedRotationExample(),
    const AnimatedContainerExample(),
    const CombinedOpacityExample(),
    const AnimatedAlignExample(),
    const CrossFadeExample(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animation Examples'),
        centerTitle: true,
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
          ],
        ),
      ),
    );
  }
}