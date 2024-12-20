import 'package:santa_clara/blocs/authentication/bloc/authentication_bloc.dart';
import 'package:santa_clara/widgets/brightness_selector.dart';
import 'package:santa_clara/widgets/email_verification_button.dart';
import 'package:santa_clara/widgets/logged_in_user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, this.navigationItems});
  final List<Widget>? navigationItems;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: key,
      child: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            DrawerHeader(
              child: SizedBox(
                width: double.infinity,
                height: 400,
                child: const LoggedInUserAvatar(
                  userAvatarSize: UserAvatarSize.large,
                ),
              ),
            ),
            if (navigationItems != null) ...navigationItems!,
            TextButton.icon(
                icon: const Icon(Icons.question_mark),
                label: const Text("Other"),
                onPressed: () {}),
            TextButton.icon(
                icon: const Icon(Icons.question_mark),
                label: const Text("Other"),
                onPressed: () {}),
            TextButton.icon(
                icon: const Icon(Icons.question_mark),
                label: const Text("Other"),
                onPressed: () {}),
            const EmailVerificationButton(),
            TextButton.icon(
                icon: const Icon(Icons.logout),
                label: const Text("Sign Out"),
                onPressed: () {
                  BlocProvider.of<AuthenticationBloc>(context)
                      .add(AuthenticationSignOutEvent());
                }),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text("Display settings",
                  style: Theme.of(context).textTheme.labelMedium),
            ),
            const BrightnessSelector(),
          ]),
        )),
      ),
    );
  }
}
