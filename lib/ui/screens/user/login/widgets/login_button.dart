import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../features/user/providers/login_notifier.dart';
import '../login_screen_controller.dart';

class LoginButton extends HookConsumerWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginNotifierProvider);
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: ElevatedButton(
        // TODO(me): Use theme
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.greenAccent,
        ),
        onPressed: !loginState.isLoading
            ? () async {
                await ref.read(loginScreenController).login();
              }
            : null,
        child: !loginState.isLoading
            ? const Text(
                'Login',
                // TODO(me): Use theme
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            : const CircularProgressIndicator(
                color: Colors.greenAccent,
              ),
      ),
    );
  }
}
