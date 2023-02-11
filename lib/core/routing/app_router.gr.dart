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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:auto_route/empty_router_widgets.dart' as _i3;
import 'package:flutter/material.dart' as _i11;

import '../../ui/screens/cart/shopping_cart/shopping_cart_screen.dart' as _i8;
import '../../ui/screens/product/detail/product_detail_screen.dart' as _i7;
import '../../ui/screens/product/list/product_list_screen.dart' as _i4;
import '../../ui/screens/product/search/product_search_screen.dart' as _i5;
import '../../ui/screens/product/search_result/product_search_result_screen.dart'
    as _i6;
import '../../ui/screens/root/root_screen.dart' as _i1;
import '../../ui/screens/user/login/login_screen.dart' as _i2;
import '../../ui/screens/user/profile/profile_screen.dart' as _i9;
import 'auth_guard.dart' as _i12;

class AppRouter extends _i10.RootStackRouter {
  AppRouter({
    _i11.GlobalKey<_i11.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i12.AuthGuard authGuard;

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    BottomNavRoute.name: (routeData) {
      return _i10.MaterialPageX<void>(
        routeData: routeData,
        child: const _i1.BottomNavBar(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
        fullscreenDialog: true,
      );
    },
    ProductRoute.name: (routeData) {
      return _i10.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i10.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    UserRoute.name: (routeData) {
      return _i10.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    ProductListRoute.name: (routeData) {
      return _i10.MaterialPageX<void>(
        routeData: routeData,
        child: const _i4.ProductListScreen(),
      );
    },
    ProductSearchRoute.name: (routeData) {
      return _i10.CustomPage<void>(
        routeData: routeData,
        child: const _i5.ProductSearchScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProductSeachResultRoute.name: (routeData) {
      return _i10.CustomPage<void>(
        routeData: routeData,
        child: const _i6.ProductSeachResultScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProductDetailRoute.name: (routeData) {
      return _i10.MaterialPageX<void>(
        routeData: routeData,
        child: const _i7.ProductDetailScreen(),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i10.MaterialPageX<void>(
        routeData: routeData,
        child: const _i8.ShoppingCartScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i10.MaterialPageX<void>(
        routeData: routeData,
        child: const _i9.ProfileScreen(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          BottomNavRoute.name,
          path: '/',
          guards: [authGuard],
          children: [
            _i10.RouteConfig(
              ProductRoute.name,
              path: 'product',
              parent: BottomNavRoute.name,
              children: [
                _i10.RouteConfig(
                  ProductListRoute.name,
                  path: '',
                  parent: ProductRoute.name,
                ),
                _i10.RouteConfig(
                  ProductSearchRoute.name,
                  path: '',
                  parent: ProductRoute.name,
                ),
                _i10.RouteConfig(
                  ProductSeachResultRoute.name,
                  path: '',
                  parent: ProductRoute.name,
                ),
                _i10.RouteConfig(
                  ProductDetailRoute.name,
                  path: '',
                  parent: ProductRoute.name,
                  meta: <String, dynamic>{'hideBottomNav': true},
                ),
              ],
            ),
            _i10.RouteConfig(
              CartRoute.name,
              path: 'cart',
              parent: BottomNavRoute.name,
              children: [
                _i10.RouteConfig(
                  ShoppingCartRoute.name,
                  path: '',
                  parent: CartRoute.name,
                )
              ],
            ),
            _i10.RouteConfig(
              UserRoute.name,
              path: 'profile',
              parent: BottomNavRoute.name,
              children: [
                _i10.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: UserRoute.name,
                )
              ],
            ),
          ],
        ),
        _i10.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i10.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.BottomNavBar]
class BottomNavRoute extends _i10.PageRouteInfo<void> {
  const BottomNavRoute({List<_i10.PageRouteInfo>? children})
      : super(
          BottomNavRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BottomNavRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ProductRoute extends _i10.PageRouteInfo<void> {
  const ProductRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProductRoute.name,
          path: 'product',
          initialChildren: children,
        );

  static const String name = 'ProductRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class CartRoute extends _i10.PageRouteInfo<void> {
  const CartRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          path: 'cart',
          initialChildren: children,
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class UserRoute extends _i10.PageRouteInfo<void> {
  const UserRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'UserRoute';
}

/// generated route for
/// [_i4.ProductListScreen]
class ProductListRoute extends _i10.PageRouteInfo<void> {
  const ProductListRoute()
      : super(
          ProductListRoute.name,
          path: '',
        );

  static const String name = 'ProductListRoute';
}

/// generated route for
/// [_i5.ProductSearchScreen]
class ProductSearchRoute extends _i10.PageRouteInfo<void> {
  const ProductSearchRoute()
      : super(
          ProductSearchRoute.name,
          path: '',
        );

  static const String name = 'ProductSearchRoute';
}

/// generated route for
/// [_i6.ProductSeachResultScreen]
class ProductSeachResultRoute extends _i10.PageRouteInfo<void> {
  const ProductSeachResultRoute()
      : super(
          ProductSeachResultRoute.name,
          path: '',
        );

  static const String name = 'ProductSeachResultRoute';
}

/// generated route for
/// [_i7.ProductDetailScreen]
class ProductDetailRoute extends _i10.PageRouteInfo<void> {
  const ProductDetailRoute()
      : super(
          ProductDetailRoute.name,
          path: '',
        );

  static const String name = 'ProductDetailRoute';
}

/// generated route for
/// [_i8.ShoppingCartScreen]
class ShoppingCartRoute extends _i10.PageRouteInfo<void> {
  const ShoppingCartRoute()
      : super(
          ShoppingCartRoute.name,
          path: '',
        );

  static const String name = 'ShoppingCartRoute';
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}
