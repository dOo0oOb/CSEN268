import 'package:flutter/material.dart';

class CrossFade extends StatefulWidget {
  const CrossFade({super.key});

  @override
  State<CrossFade> createState() => CrossFadeState();
}

AnimatedCrossFade( 
  duration: Duration(seconds: 1), 
  firstChild: Container(color: Colors.red, height: 100.0), 
  secondChild: Container(color: Colors.blue, height: 200.0), 
  crossFadeState: _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond, 
)
