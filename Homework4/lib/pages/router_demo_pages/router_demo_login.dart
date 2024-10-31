import 'package:CSEN268_F24/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouterDemoLogin extends StatelessWidget {
  const RouterDemoLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 251, 239, 255),
          title: const Text('Login'),
          centerTitle: true,
        ),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(height: 20), // Add space above the button
              SizedBox(
                width: 350, // Set the width of the button
                child: FilledButton(
                  child: const Text("Login"),
                  onPressed: () {
                    BlocProvider.of<AuthenticationBloc>(context)
                        .add(AuthenticationLoginEvent());
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
