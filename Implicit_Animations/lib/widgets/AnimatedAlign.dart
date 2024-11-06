import 'package:flutter/material.dart';

AnimatedAlign( 
  duration: Duration(seconds: 1), 
  alignment: _isTopLeft ? Alignment.topLeft : Alignment.bottomRight, 
  child: FlutterLogo(), 
)