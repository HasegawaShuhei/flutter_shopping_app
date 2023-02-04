import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../repositories/config_local_repository.dart';

final themeSelectorNotifierProvider =
    NotifierProvider<ThemeSelectorNotifier, ThemeMode>(
  ThemeSelectorNotifier.new,
  name: 'themeSelectorNotifierProvider',
);

class ThemeSelectorNotifier extends Notifier<ThemeMode> {
  ConfigLocalRepository get _repository =>
      ref.read(configLocalRepositoryProvider);

  @override
  ThemeMode build() {
    return _init();
  }

  ThemeMode _init() {
    final themeIndex = _repository.getThemeIndex();
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
    await _repository.setThemeIndex(index: theme.index);
    state = theme;
  }
}
