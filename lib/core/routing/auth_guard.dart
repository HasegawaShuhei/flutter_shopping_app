import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../enums/app_launch_status.dart';
import '../providers/app_launch_status.dart';
import 'app_launch_base_guard.dart';
import 'app_router.gr.dart';

final authGuardProvider = Provider<AuthGuard>(AuthGuard.new);

/// アプリ起動時にログインしているかを見て、ルートを決定するGuard
class AuthGuard extends AppLauchBaseGuard {
  AuthGuard(super.ref) : _ref = ref;

  final Ref _ref;

  @override
  bool needsReevaluate({required AppLaunchStatus launchStatus}) {
    return launchStatus.isUnauthorized || launchStatus.isAuthorized;
  }

  @override
  bool canResolve({required AppLaunchStatus launchStatus}) {
    return launchStatus.isAuthorized;
  }

  @override
  PageRouteInfo get redirectRoute {
    final status = _ref.read(appLaunchStatusProvider).value;

    if (status != null && status.isUnauthorized) {
      return const LoginRoute();
    }
    // リフレッシュ時に再度ローディングを表示できるようにintitialRouteを返す
    return const BottomNavRoute();
  }
}
