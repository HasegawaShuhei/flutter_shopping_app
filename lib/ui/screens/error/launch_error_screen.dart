import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/providers/app_launch_status.dart';

class LaunchErrorScreen extends ConsumerWidget {
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
              onPressed: () => ref.invalidate(appLaunchStatusProvider),
              child: const Text('retry'),
            ),
          ],
        ),
      ),
    );
  }
}
