import 'package:CSEN268_F24/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:CSEN268_F24/navigation/routerdemo.dart';
import 'package:CSEN268_F24/pages/home_page.dart';
import 'package:CSEN268_F24/repositories/authentication/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/book/bloc/book_bloc.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final authenticationBloc = AuthenticationBloc();
  final bookBloc = BookBloc();
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) {
        return (OktaAuthenticationRepository() as AuthenticationRepository);
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => authenticationBloc..add(AuthenticationLoginEvent()),
          ),
          BlocProvider(
            create: (context) => bookBloc..init()..add(LoadBooks()),
            // child: const HomePage(), // HomePage
          ),
        ],
        child: MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routerConfig: routerDemo(authenticationBloc),
        ),
      ),
    );
  }
}
