import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authGuardProvider = Provider<AutoRouteGuard>(AuthGuard.new);

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._ref);
  final Ref _ref;
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {}
}
