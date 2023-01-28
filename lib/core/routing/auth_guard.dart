import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/user/providers/user_credentials.dart';
import 'app_router.gr.dart';

final authGuardProvider = Provider<AuthGuard>(AuthGuard.new);

class AuthGuard extends AutoRedirectGuard {
  AuthGuard(this._ref) {
    _ref.listen(
      userCredentialsProvider,
      (_, __) {
        /// userCredentialsProviderを監視して更新時にrouteを再評価する
        reevaluate();
      },
    );
  }
  final Ref _ref;

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
    final userCredentials = await _ref.read(userCredentialsProvider.future);
    if (userCredentials.isAuthorized == true) {
      /// ここの処理が2回走ってしまう場合があるが、resolverの使用は1回のみなのでresolove中はreturnする
      if (resolver.isResolved) return;

      /// ログイン済みであれば通常のrouteへ
      resolver.next();
    } else {
      /// 未ログインであればログイン画面へリダイレクト
      redirect(const LoginRoute(), resolver: resolver);
    }
  }
}
