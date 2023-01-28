import 'package:flutter/material.dart';

class LoginFormTitle extends StatelessWidget {
  const LoginFormTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Login',
      // TODO(me): Use theme
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
