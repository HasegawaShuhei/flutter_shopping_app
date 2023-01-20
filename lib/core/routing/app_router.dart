import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../features/cart/ui/shopping_cart/shopping_cart_screen.dart';
import '../../features/product/ui/detail/product_detail_screen.dart';
import '../../features/product/ui/list/product_list_screen.dart';
import '../../features/user/ui/profile/profile_screen.dart';
import '../../features/root/ui/root_screen.dart';
import 'app_router.gr.dart';

export 'app_router.gr.dart';

final appRouterProvider = Provider((ref) => AppRouter());

@MaterialAutoRouter(
  // nameを生成する際に最初に指定した文字列を削除して、2番目以降の文字列と入れ替える
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(
      initial: true,
      path: '/',
      name: 'BottomNavRoute',
      page: BottomNavBar,
      children: [
        AutoRoute<void>(
          path: 'product',
          name: 'ProductRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<void>(
              path: '',
              page: ProductListScreen,
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
          name: 'CartRouter',
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
          name: 'UserRouter',
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
  ],
)
class $AppRouter {}
