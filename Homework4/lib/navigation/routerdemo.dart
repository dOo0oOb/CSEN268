import 'package:CSEN268_F24/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:CSEN268_F24/pages/home_page.dart';
import 'package:CSEN268_F24/pages/login/login_page.dart';
import 'package:CSEN268_F24/pages/router_demo_pages/router_demo_home.dart';
import 'package:CSEN268_F24/pages/router_demo_pages/router_demo_login.dart';
import 'package:CSEN268_F24/pages/router_demo_pages/router_demo_profile.dart';
import 'package:CSEN268_F24/pages/router_demo_pages/router_demo_profile_detail.dart';
import 'package:CSEN268_F24/pages/router_demo_pages/router_demo_users.dart';
import 'package:CSEN268_F24/pages/sign_in/sign_in_page.dart';
import 'package:CSEN268_F24/pages/stateful_login_page.dart';
import 'package:CSEN268_F24/utilities/stream_to_listenable.dart';
import 'package:CSEN268_F24/widgets/scaffold_with_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../model/book.dart';
import '../pages/router_demo_pages/router_auther.dart';
import '../pages/router_demo_pages/router_book_detail.dart';
import '../pages/router_demo_pages/router_title.dart';

class RouteName {
  static const home = "home";
  static const login = "login";
  static const profile = "profile";
  static const profileDetail = "profileDetail";
  static const users = "users";
  static const editprofile = "editprofile";
  static const adduser = "adduser";
  static const byAuthor = "byAuthor";
  static const byTitle = "byTitle";
  static const byAuthorDetail = "byAuthorDetail";
  static const byTitleDetail = "byTitleDetail";

  static final List<Book> bookList = [];

}

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "Root");
final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "Shell");

GoRouter routerDemo(AuthenticationBloc authenticationBloc) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/login',
    refreshListenable: StreamToListenable([authenticationBloc.stream]),
    redirect: (context, state) async {
      if (authenticationBloc.state is AuthenticationLoggedOut &&
          (!(state.fullPath?.startsWith("/login") ?? false))) {
        return "/login";
      } else {
        if ((state.fullPath?.startsWith("/login") ?? false) &&
            authenticationBloc.state is AuthenticationLoggedIn) {
          return "/byAuthor";
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/login',
        name: RouteName.login,
        builder: (context, state) {
          return const RouterDemoLogin();
        },
      ),
      GoRoute(
          path: '/',
          name: RouteName.home,
          builder: (context, state) {
            return const RouterDemoHome();
            //return const RouterAuthor();
          },
          routes: [
            ShellRoute(
              navigatorKey: shellNavigatorKey,
              builder:
                  (BuildContext context, GoRouterState state, Widget child) {
                return ScaffoldWithNavBar(child: child);
              },
              routes: <RouteBase>[
                GoRoute(
                  path: 'users',
                  name: RouteName.users,
                  builder: (BuildContext context, GoRouterState state) {
                    return const RouterDemoUsers();
                  },
                ),
                GoRoute(
                    path: 'profile',
                    name: RouteName.profile,
                    builder: (BuildContext context, GoRouterState state) {
                      return const RouterDemoProfile();
                    },
                    routes: [
                      GoRoute(
                        path: 'detail',
                        name: RouteName.profileDetail,
                        parentNavigatorKey: rootNavigatorKey,
                        builder: (BuildContext context, GoRouterState state) {
                          return const RouterDemoProfileDetail();
                        },
                      )
                    ]),
                GoRoute(
                path: 'byAuthor',
                name: RouteName.byAuthor,
                builder: (BuildContext context, GoRouterState state) {
                  return const RouterAuthor();
                },
                routes: [
                  GoRoute(
                    path: 'detail',
                    name: RouteName.byAuthorDetail,
                    parentNavigatorKey: rootNavigatorKey,
                    builder: (BuildContext context, GoRouterState state) {
                      return const RouterBookDetail();
                    },
                  )
                ]),
                GoRoute(
                path: 'byTitle',
                name: RouteName.byTitle,
                builder: (BuildContext context, GoRouterState state) {
                  return RouterTitle(bookList: RouteName.bookList);
                },
                routes: [
                  GoRoute(
                    path: 'detail',
                    name: RouteName.byTitleDetail,
                    parentNavigatorKey: rootNavigatorKey,
                    builder: (BuildContext context, GoRouterState state) {
                      return const RouterBookDetail();
                    },
                  )
                ]),
              ],
            )
          ]),
    ],
  );
}
