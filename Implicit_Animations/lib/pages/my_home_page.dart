import 'package:flutter/material.dart';
import '../widgets/padded_text.dart'; // Keep this import if you're using PaddedText elsewhere

import '../widgets/AnimatedRotation.dart'; // Import the RotatingLogo widget file

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Implicit Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Rotation", // Title in the body
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20), // Spacer between title and logo
            const RotatingLogo(), // Rotating logo widget
          ],
        ),
      ),
    );
  }
}
