import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../features/user/providers/user_credentials.dart';

class LaunchErrorScreen extends HookConsumerWidget {
  const LaunchErrorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('An error occured'),
            ElevatedButton(
              onPressed: () => ref.invalidate(userCredentialsProvider),
              child: const Text('retry'),
            ),
          ],
        ),
      ),
    );
  }
}
