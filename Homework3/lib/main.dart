import 'pages/home_page.dart';
import 'pages/sign_in/sign_in_page.dart';
import 'pages/stateful_login_page.dart';
import 'repositories/authentication/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) {
        return (OktaAuthenticationRepository() as AuthenticationRepository);
      },
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const HomePage(),
            '/noBloc': (context) => const StatefulLoginPage(),
            '/bloc': (context) => const SignInPage(),
            '/cubit': (context) => const LoginPage(),
          }),
    );
  }
}
