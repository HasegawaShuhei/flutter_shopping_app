import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../components/auth_text_field.dart';
import '../login_screen_controller.dart';
import 'login_form_title.dart';

/// ログイン情報はdummyjsonの既存のユーザーのものを使う
/// 例) username:'kminchelle', password:'0lelplR'
/// [https://dummyjson.com/docs/auth]
class LoginTextFields extends StatelessWidget {
  const LoginTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        LoginFormTitle(),
        Gap(32),
        _NameTextFields(),
        Gap(24),
        _PasswordTextFields(),
      ],
    );
  }
}

class _NameTextFields extends HookConsumerWidget {
  const _NameTextFields();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = ref.watch(loginScreenController).nameController;

    return Column(
      children: [
        AuthTextField(
          controller: nameController,
          hintText: 'name',
          icon: Icons.person_outline,
        ),
      ],
    );
  }
}

class _PasswordTextFields extends HookConsumerWidget {
  const _PasswordTextFields();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordController =
        ref.watch(loginScreenController).passwordController;
    final confirmPasswordController =
        ref.watch(loginScreenController).confirmPasswordController;
    final isObscure = useState<bool>(true);
    void onTap() => isObscure.value = !isObscure.value;
    return Column(
      children: [
        AuthTextField(
          controller: passwordController,
          hintText: 'password',
          icon: Icons.key_outlined,
          isPassword: true,
          isObscure: isObscure.value,
          onTap: onTap,
        ),
        const Gap(24),
        AuthTextField(
          controller: confirmPasswordController,
          hintText: 'password(confirm)',
          icon: Icons.key_outlined,
          isPassword: true,
          isObscure: isObscure.value,
          onTap: onTap,
        ),
      ],
    );
  }
}
