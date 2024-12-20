import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedOpacity'),
      centerTitle: true,
      ),
      body: Center(
        child: Column(
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
        ),
      ),
    );
  }
}