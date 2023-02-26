import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../enums/app_launch_status.dart';
import '../providers/app_launch_status.dart';

/// アプリ起動時に利用するguardの基底クラス
abstract class AppLauchBaseGuard extends AutoRedirectGuard {
  AppLauchBaseGuard(this._ref) {
    _ref.listen(
      appLaunchStatusProvider,
      (_, next) {
        final nextValue = next.value;
        if (nextValue == null) {
          return;
        }

        if (needsReevaluate(launchStatus: nextValue)) {
          reevaluate();
        }
      },
    );
  }

  final Ref _ref;
  bool needsReevaluate({required AppLaunchStatus launchStatus});
  bool canResolve({required AppLaunchStatus launchStatus});
  PageRouteInfo<dynamic> get redirectRoute;

  @override
  Future<bool> canNavigate(RouteMatch<dynamic> route) async {
    /// 今回の場合は特に条件は不要なのでfalseを返しておく
    return false;
  }

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final launchStatus = await _ref.read(appLaunchStatusProvider.future);
    if (canResolve(launchStatus: launchStatus)) {
      /// ここの処理が2回走ってしまう場合があるが、resolverの使用は1回のみなのでresolove中はreturnする
      if (resolver.isResolved) return;

      /// 条件を満たしていれば通常のrouteへ
      resolver.next();
      return;
    }

    /// リダイレクト
    redirect(redirectRoute, resolver: resolver);
  }
}
