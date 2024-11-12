import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool isExpanded = false;

  void _toggleContainer() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainer'),
      centerTitle: true,
      ),
      body: GestureDetector(
        onTap: _toggleContainer,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            width: isExpanded ? 200.0 : 100.0,
            height: isExpanded ? 200.0 : 100.0,
            color: isExpanded ? Colors.blue : Colors.red,
            alignment: isExpanded ? Alignment.center : AlignmentDirectional.topCenter,
            child: const FlutterLogo(size: 75),
          ),
        ),
      )
    );
  }
}
