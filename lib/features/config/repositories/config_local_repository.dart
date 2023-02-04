import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/providers/shared_preferences.dart';

final configLocalRepositoryProvider = Provider<ConfigLocalRepository>((ref) {
  final sharedPreferences = ref.read(sharedPreferencesProvider);
  return ConfigLocalRepository(sharedPreferences);
});

class ConfigLocalRepository {
  ConfigLocalRepository(this._sharedPreferences);
  final SharedPreferences _sharedPreferences;

  static const _themePrefsKey = 'selectedThemeKey';

  int? getThemeIndex() {
    return _sharedPreferences.getInt(_themePrefsKey);
  }

  Future<void> setThemeIndex({required int index}) async {
    await _sharedPreferences.setInt(_themePrefsKey, index);
  }
}
