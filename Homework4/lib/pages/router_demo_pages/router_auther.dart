import 'package:CSEN268_F24/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:CSEN268_F24/navigation/routerdemo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RouterAuthor extends StatelessWidget {
  const RouterAuthor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 243, 245),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: const Text('Books'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ],
        ),
      ),


    );
  }
}
