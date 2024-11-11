import 'package:CSEN268_F24/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouterDemoProfileDetail extends StatelessWidget {
  const RouterDemoProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: const Center(
        child: Column(
          children: [
            Text("Router Demo Profile Detail Page"),
          ],
        ),
      ),
    );
  }
}
