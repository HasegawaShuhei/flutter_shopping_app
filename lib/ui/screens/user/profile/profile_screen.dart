import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/extensions/theme_mode_extenion.dart';
import '../../../../features/config/providers/theme_selector_provider.dart';
import '../../../../features/user/providers/user_service.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async => ref.read(userServiceProvider).logout(),
              child: const Text('logout'),
            ),
            const _ThemeSelector(),
          ],
        ),
      ),
    );
  }
}

class _ThemeSelector extends HookConsumerWidget {
  const _ThemeSelector();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentThemeMode = ref.watch(themeSelectorNotifierProvider);
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: ThemeMode.values.length,
        itemBuilder: (_, index) {
          final themeMode = ThemeMode.values[index];
          return RadioListTile<ThemeMode>(
            value: themeMode,
            groupValue: currentThemeMode,
            onChanged: (newTheme) => ref
                .read(themeSelectorNotifierProvider.notifier)
                .changeAndSave(theme: newTheme!),
            title: Text(themeMode.subtitle),
          );
        },
      ),
    );
  }
}
