import 'package:flutter/material.dart';

AnimatedCrossFade( 
  duration: Duration(seconds: 1), 
  firstChild: Container(color: Colors.red, height: 100.0), 
  secondChild: Container(color: Colors.blue, height: 200.0), 
  crossFadeState: _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond, 
)
