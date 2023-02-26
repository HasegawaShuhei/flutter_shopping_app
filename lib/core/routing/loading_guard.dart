import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../enums/app_launch_status.dart';
import 'app_launch_base_guard.dart';
import 'app_router.gr.dart';

final loadingGuardProvider = Provider<LoadingGuard>(LoadingGuard.new);

/// アプリ起動時にローディング中かどうかを見て、ルートを決定するGuard
class LoadingGuard extends AppLauchBaseGuard {
  LoadingGuard(super.ref);

  @override
  bool needsReevaluate({required AppLaunchStatus launchStatus}) {
    return launchStatus.isLoading;
  }

  @override
  bool canResolve({required AppLaunchStatus launchStatus}) {
    return !launchStatus.isLoading;
  }

  @override
  PageRouteInfo get redirectRoute => const LoadingRoute();
}
