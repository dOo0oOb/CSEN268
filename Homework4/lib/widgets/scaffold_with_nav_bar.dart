import 'package:CSEN268_F24/navigation/routerdemo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../blocs/book/bloc/book_bloc.dart';

/// Builds the "shell" for the app by building a Scaffold with a
/// BottomNavigationBar, where [child] is placed in the body of the Scaffold.
class ScaffoldWithNavBar extends StatelessWidget {
  /// Constructs an [ScaffoldWithNavBar].
  const ScaffoldWithNavBar({
    required this.child,
    super.key,
  });

  /// The widget to display in the body of the Scaffold.
  /// In this sample, it is a Navigator.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.list),
          //   label: 'Users',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'By Author',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'By Title',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Profile',
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    // if (location.startsWith('/users')) {
    //   return 0;
    // }
    if (location.startsWith('/byAuthor')) {
      return 0;
    }
    if (location.startsWith('/byTitle')) {
      return 1;
    }
    if (location.startsWith('/profile')) {
      return 2;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      // case 0:
      //   GoRouter.of(context).goNamed(RouteName.users);
      case 0:
        GoRouter.of(context).goNamed(RouteName.byAuthor);
      case 1:
        GoRouter.of(context).goNamed(RouteName.byTitle);
      case 2:
        GoRouter.of(context).goNamed(RouteName.profile);
    }
  }
}
