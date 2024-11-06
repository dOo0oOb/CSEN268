import 'package:flutter/material.dart';

class Opacity extends StatefulWidget {
  const Opacity({super.key});

  @override
  State<Opacity> createState() => OpacityState();
}

AnimatedOpacity(
  duration: Duration(seconds: 1),
  opacity: _isVisible ? 1.0 : 0.0,
  child: Text('Hello World'),
)
