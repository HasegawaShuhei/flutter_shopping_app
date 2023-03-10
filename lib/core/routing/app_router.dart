import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../ui/screens/cart/shopping_cart/shopping_cart_screen.dart';
import '../../ui/screens/error/launch_error_screen.dart';
import '../../ui/screens/loading/loading_screen.dart';
import '../../ui/screens/product/detail/product_detail_screen.dart';
import '../../ui/screens/product/list/product_list_screen.dart';
import '../../ui/screens/product/search/product_search_screen.dart';
import '../../ui/screens/product/search_result/product_search_result_screen.dart';
import '../../ui/screens/root/root_screen.dart';
import '../../ui/screens/user/login/login_screen.dart';
import '../../ui/screens/user/profile/profile_screen.dart';
import 'app_router.gr.dart';
import 'auth_guard.dart';
import 'error_guard.dart';
import 'loading_guard.dart';

export 'app_router.gr.dart';

final appRouterProvider = Provider((ref) {
  final loadingGuard = ref.watch(loadingGuardProvider);
  final errorGuard = ref.watch(errorGuardProvider);
  final authGuard = ref.watch(authGuardProvider);
  return AppRouter(
    loadingGuard: loadingGuard,
    errorGuard: errorGuard,
    authGuard: authGuard,
  );
});

@MaterialAutoRouter(
  // nameを生成する際に最初に指定した文字列を削除して、2番目以降の文字列と入れ替える
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    CustomRoute<void>(
      initial: true,
      guards: [
        LoadingGuard,
        ErrorGuard,
        AuthGuard,
      ],
      path: '/',
      name: 'BottomNavRoute',
      page: BottomNavBar,
      transitionsBuilder: TransitionsBuilders.noTransition,
      children: [
        AutoRoute<void>(
          path: 'product',
          name: 'ProductRoute',
          page: EmptyRouterPage,
          children: [
            AutoRoute<void>(
              path: '',
              page: ProductListScreen,
            ),
            CustomRoute<void>(
              path: '',
              page: ProductSearchScreen,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              durationInMilliseconds: 200,
            ),
            CustomRoute<void>(
              path: '',
              page: ProductSeachResultScreen,
              transitionsBuilder: TransitionsBuilders.fadeIn,
              durationInMilliseconds: 200,
            ),
            AutoRoute<void>(
              path: '',
              page: ProductDetailScreen,
              meta: <String, dynamic>{'hideBottomNav': true},
            ),
          ],
        ),
        AutoRoute<void>(
          path: 'cart',
          name: 'CartRoute',
          page: EmptyRouterPage,
          children: [
            AutoRoute<void>(
              path: '',
              page: ShoppingCartScreen,
            ),
          ],
        ),
        AutoRoute<void>(
          path: 'profile',
          name: 'UserRoute',
          page: EmptyRouterPage,
          children: [
            AutoRoute<void>(
              path: '',
              page: ProfileScreen,
            ),
          ],
        ),
      ],
    ),
    CustomRoute<void>(
      path: '/login',
      name: 'LoginRoute',
      page: LoginScreen,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute<void>(
      path: '/loding',
      name: 'LoadingRoute',
      page: LoadingScreen,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    CustomRoute<void>(
      path: '/error',
      name: 'LaunchErrorRoute',
      page: LaunchErrorScreen,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
