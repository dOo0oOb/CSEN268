import 'package:flutter/material.dart';

AnimatedOpacity(
  duration: Duration(seconds: 1),
  opacity: _isVisible ? 1.0 : 0.0,
  child: Text('Hello World'),
)
