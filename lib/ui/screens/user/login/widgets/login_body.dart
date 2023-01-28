import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'login_button.dart';
import 'login_text_fields.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(24, 48, 24, 0),
          child: Column(
            children: const [
              LoginTextFields(),
              Gap(24),
              LoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}
