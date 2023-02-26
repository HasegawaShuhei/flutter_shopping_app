import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../enums/app_launch_status.dart';
import 'app_launch_base_guard.dart';
import 'app_router.gr.dart';

final authGuardProvider = Provider<AuthGuard>(AuthGuard.new);

/// アプリ起動時にログインしているかを見て、ルートを決定するGuard
class AuthGuard extends AppLauchBaseGuard {
  AuthGuard(super.ref);

  @override
  bool needsReevaluate({required AppLaunchStatus launchStatus}) {
    return launchStatus.isUnauthorized || launchStatus.isAuthorized;
  }

  @override
  bool canResolve({required AppLaunchStatus launchStatus}) {
    return launchStatus.isAuthorized;
  }

  @override
  PageRouteInfo get redirectRoute => const LoginRoute();
}
