import 'package:CSEN268_F24/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouterBookDetail extends StatelessWidget {
  const RouterBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book")),
      body: Center(
        child: Column(
          children: [
            Text("Detail of the Book"),
          ],
        ),
      ),
    );
  }
}
