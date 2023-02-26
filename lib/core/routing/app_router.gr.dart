// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:auto_route/empty_router_widgets.dart' as _i5;
import 'package:flutter/material.dart' as _i13;

import '../../ui/screens/cart/shopping_cart/shopping_cart_screen.dart' as _i10;
import '../../ui/screens/error/launch_error_screen.dart' as _i4;
import '../../ui/screens/loading/loading_screen.dart' as _i3;
import '../../ui/screens/product/detail/product_detail_screen.dart' as _i9;
import '../../ui/screens/product/list/product_list_screen.dart' as _i6;
import '../../ui/screens/product/search/product_search_screen.dart' as _i7;
import '../../ui/screens/product/search_result/product_search_result_screen.dart'
    as _i8;
import '../../ui/screens/root/root_screen.dart' as _i1;
import '../../ui/screens/user/login/login_screen.dart' as _i2;
import '../../ui/screens/user/profile/profile_screen.dart' as _i11;
import 'auth_guard.dart' as _i16;
import 'error_guard.dart' as _i15;
import 'loading_guard.dart' as _i14;

class AppRouter extends _i12.RootStackRouter {
  AppRouter({
    _i13.GlobalKey<_i13.NavigatorState>? navigatorKey,
    required this.loadingGuard,
    required this.errorGuard,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i14.LoadingGuard loadingGuard;

  final _i15.ErrorGuard errorGuard;

  final _i16.AuthGuard authGuard;

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    BottomNavRoute.name: (routeData) {
      return _i12.CustomPage<void>(
        routeData: routeData,
        child: const _i1.BottomNavBar(),
        transitionsBuilder: _i12.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginRoute.name: (routeData) {
      return _i12.CustomPage<void>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
        transitionsBuilder: _i12.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoadingRoute.name: (routeData) {
      return _i12.CustomPage<void>(
        routeData: routeData,
        child: const _i3.LoadingScreen(),
        transitionsBuilder: _i12.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LaunchErrorRoute.name: (routeData) {
      return _i12.CustomPage<void>(
        routeData: routeData,
        child: const _i4.LaunchErrorScreen(),
        transitionsBuilder: _i12.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProductRoute.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    UserRoute.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    ProductListRoute.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i6.ProductListScreen(),
      );
    },
    ProductSearchRoute.name: (routeData) {
      return _i12.CustomPage<void>(
        routeData: routeData,
        child: const _i7.ProductSearchScreen(),
        transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProductSeachResultRoute.name: (routeData) {
      return _i12.CustomPage<void>(
        routeData: routeData,
        child: const _i8.ProductSeachResultScreen(),
        transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProductDetailRoute.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i9.ProductDetailScreen(),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i10.ShoppingCartScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.MaterialPageX<void>(
        routeData: routeData,
        child: const _i11.ProfileScreen(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          BottomNavRoute.name,
          path: '/',
          guards: [
            loadingGuard,
            errorGuard,
            authGuard,
          ],
          children: [
            _i12.RouteConfig(
              ProductRoute.name,
              path: 'product',
              parent: BottomNavRoute.name,
              children: [
                _i12.RouteConfig(
                  ProductListRoute.name,
                  path: '',
                  parent: ProductRoute.name,
                ),
                _i12.RouteConfig(
                  ProductSearchRoute.name,
                  path: '',
                  parent: ProductRoute.name,
                ),
                _i12.RouteConfig(
                  ProductSeachResultRoute.name,
                  path: '',
                  parent: ProductRoute.name,
                ),
                _i12.RouteConfig(
                  ProductDetailRoute.name,
                  path: '',
                  parent: ProductRoute.name,
                  meta: <String, dynamic>{'hideBottomNav': true},
                ),
              ],
            ),
            _i12.RouteConfig(
              CartRoute.name,
              path: 'cart',
              parent: BottomNavRoute.name,
              children: [
                _i12.RouteConfig(
                  ShoppingCartRoute.name,
                  path: '',
                  parent: CartRoute.name,
                )
              ],
            ),
            _i12.RouteConfig(
              UserRoute.name,
              path: 'profile',
              parent: BottomNavRoute.name,
              children: [
                _i12.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: UserRoute.name,
                )
              ],
            ),
          ],
        ),
        _i12.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i12.RouteConfig(
          LoadingRoute.name,
          path: '/loding',
        ),
        _i12.RouteConfig(
          LaunchErrorRoute.name,
          path: '/error',
        ),
        _i12.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.BottomNavBar]
class BottomNavRoute extends _i12.PageRouteInfo<void> {
  const BottomNavRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BottomNavRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BottomNavRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.LoadingScreen]
class LoadingRoute extends _i12.PageRouteInfo<void> {
  const LoadingRoute()
      : super(
          LoadingRoute.name,
          path: '/loding',
        );

  static const String name = 'LoadingRoute';
}

/// generated route for
/// [_i4.LaunchErrorScreen]
class LaunchErrorRoute extends _i12.PageRouteInfo<void> {
  const LaunchErrorRoute()
      : super(
          LaunchErrorRoute.name,
          path: '/error',
        );

  static const String name = 'LaunchErrorRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class ProductRoute extends _i12.PageRouteInfo<void> {
  const ProductRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProductRoute.name,
          path: 'product',
          initialChildren: children,
        );

  static const String name = 'ProductRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class CartRoute extends _i12.PageRouteInfo<void> {
  const CartRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          path: 'cart',
          initialChildren: children,
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class UserRoute extends _i12.PageRouteInfo<void> {
  const UserRoute({List<_i12.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'UserRoute';
}

/// generated route for
/// [_i6.ProductListScreen]
class ProductListRoute extends _i12.PageRouteInfo<void> {
  const ProductListRoute()
      : super(
          ProductListRoute.name,
          path: '',
        );

  static const String name = 'ProductListRoute';
}

/// generated route for
/// [_i7.ProductSearchScreen]
class ProductSearchRoute extends _i12.PageRouteInfo<void> {
  const ProductSearchRoute()
      : super(
          ProductSearchRoute.name,
          path: '',
        );

  static const String name = 'ProductSearchRoute';
}

/// generated route for
/// [_i8.ProductSeachResultScreen]
class ProductSeachResultRoute extends _i12.PageRouteInfo<void> {
  const ProductSeachResultRoute()
      : super(
          ProductSeachResultRoute.name,
          path: '',
        );

  static const String name = 'ProductSeachResultRoute';
}

/// generated route for
/// [_i9.ProductDetailScreen]
class ProductDetailRoute extends _i12.PageRouteInfo<void> {
  const ProductDetailRoute()
      : super(
          ProductDetailRoute.name,
          path: '',
        );

  static const String name = 'ProductDetailRoute';
}

/// generated route for
/// [_i10.ShoppingCartScreen]
class ShoppingCartRoute extends _i12.PageRouteInfo<void> {
  const ShoppingCartRoute()
      : super(
          ShoppingCartRoute.name,
          path: '',
        );

  static const String name = 'ShoppingCartRoute';
}

/// generated route for
/// [_i11.ProfileScreen]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}
