import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../enums/app_launch_status.dart';
import 'app_launch_base_guard.dart';
import 'app_router.gr.dart';

final errorGuardProvider = Provider<ErrorGuard>(ErrorGuard.new);

/// アプリ起動時にエラーが発生しているかを見て、ルートを決定するGuard
class ErrorGuard extends AppLauchBaseGuard {
  ErrorGuard(super.ref);

  @override
  bool needsReevaluate({required AppLaunchStatus launchStatus}) {
    return launchStatus.hasError;
  }

  @override
  bool canResolve({required AppLaunchStatus launchStatus}) {
    return !launchStatus.hasError;
  }

  @override
  PageRouteInfo get redirectRoute => const LaunchErrorRoute();
}
