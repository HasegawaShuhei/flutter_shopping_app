import 'package:flutter/material.dart';

import '../../../../../core/styles/app_text.dart';

class LoginFormTitle extends StatelessWidget {
  const LoginFormTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Login',
      style: AppTextStytles.s24Wbold,
    );
  }
}
