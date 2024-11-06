import 'package:flutter/material.dart';

class CombinedOpacityExampleApp extends StatelessWidget {
  const CombinedOpacityExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Combined Opacity Example')),
        body: const CombinedOpacityExample(),
      ),
    );
  }
}

class CombinedOpacityExample extends StatefulWidget {
  const CombinedOpacityExample({super.key});

  @override
  State<CombinedOpacityExample> createState() => _CombinedOpacityExampleState();
}

class _CombinedOpacityExampleState extends State<CombinedOpacityExample> {
  bool isVisible = true;

  void _toggleOpacity() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedOpacity(
          opacity: isVisible ? 1.0 : 0.0,
          duration: const Duration(seconds: 3),
          child: isVisible ? const FlutterLogo(size: 100) : const Text('Hello World', style: TextStyle(fontSize: 24)),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _toggleOpacity,
          child: const Text('Toggle Opacity'),
        ),
      ],
    );
  }
}
