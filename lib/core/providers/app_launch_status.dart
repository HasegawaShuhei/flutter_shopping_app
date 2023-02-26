import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/user/providers/user.dart';
import '../enums/app_launch_status.dart';

/// アプリ起動時の状態を管理するprovider
final appLaunchStatusProvider = FutureProvider<AppLaunchStatus>((ref) async {
  return ref.watch(userProvider).when(
        data: (user) {
          if (user == null) {
            return AppLaunchStatus.unauthorized;
          }
          return AppLaunchStatus.authorized;
        },
        loading: () => AppLaunchStatus.loading,
        error: (e, _) {
          return AppLaunchStatus.error;
        },
      );
});
