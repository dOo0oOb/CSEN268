import 'package:flutter/material.dart';

class Align extends StatefulWidget {
  const Align({super.key});

  @override
  State<Align> createState() => AlignState();
}

AnimatedAlign( 
  duration: Duration(seconds: 1), 
  alignment: _isTopLeft ? Alignment.topLeft : Alignment.bottomRight, 
  child: FlutterLogo(), 
)