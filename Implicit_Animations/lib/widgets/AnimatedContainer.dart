import 'package:flutter/material.dart';

class Container extends StatefulWidget {
  const Container({super.key});

  @override
  State<Container> createState() => ContainerState();
}

AnimatedContainer( 
  duration: Duration(seconds: 1), 
  width: _isExpanded ? 200.0 : 100.0, 
  height: _isExpanded ? 200.0 : 100.0, 
  color: _isExpanded ? Colors.blue : Colors.red, 
  child: FlutterLogo(), 
)
