import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../repositories/config_local_repository.dart';

final themeSelectorNotifierProvider =
    NotifierProvider<ThemeSelectorNotifier, ThemeMode>(
  ThemeSelectorNotifier.new,
  name: 'themeSelectorNotifierProvider',
);

class ThemeSelectorNotifier extends Notifier<ThemeMode> {
  @override
  ThemeMode build() {
    return _init();
  }

  ThemeMode _init() {
    final themeIndex = ref.read(configLocalRepositoryProvider).getThemeIndex();
    if (themeIndex == null) {
      return ThemeMode.system;
    }
    final themeMode = ThemeMode.values.firstWhere(
      (e) => e.index == themeIndex,
      orElse: () => ThemeMode.system,
    );
    return themeMode;
  }

  Future<void> changeAndSave({required ThemeMode theme}) async {
    await ref
        .read(configLocalRepositoryProvider)
        .setThemeIndex(index: theme.index);
    state = theme;
  }
}
