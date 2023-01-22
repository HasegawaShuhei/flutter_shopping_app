import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/user/providers/user_credentials.dart';
import 'app_router.gr.dart';

final authGuardProvider = Provider<AuthGuard>(AuthGuard.new);

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._ref);
  final Ref _ref;
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final userCredentials = await _ref.read(userCredentialsProvider.future);
    if (userCredentials.isAuthorized) {
      resolver.next();
    } else {
      await router.push(const SignupRoute());
    }
  }
}
