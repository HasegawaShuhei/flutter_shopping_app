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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i3;
import 'package:flutter/material.dart' as _i9;

import '../../features/cart/ui/shopping_cart/shopping_cart_screen.dart' as _i6;
import '../../features/product/ui/detail/product_detail_screen.dart' as _i5;
import '../../features/product/ui/list/product_list_screen.dart' as _i4;
import '../../features/root/ui/root_screen.dart' as _i1;
import '../../features/user/ui/profile/profile_screen.dart' as _i7;
import '../../features/user/ui/signup/signup_screen.dart' as _i2;
import 'auth_guard.dart' as _i10;

class AppRouter extends _i8.RootStackRouter {
  AppRouter({
    _i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i10.AuthGuard authGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    BottomNavRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i1.BottomNavBar(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.SignupScreen(),
      );
    },
    ProductRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    UserRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    ProductListRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i4.ProductListScreen(),
      );
    },
    ProductDetailRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i5.ProductDetailScreen(),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i6.ShoppingCartScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          BottomNavRoute.name,
          path: '/',
          guards: [authGuard],
          children: [
            _i8.RouteConfig(
              ProductRoute.name,
              path: 'product',
              parent: BottomNavRoute.name,
              children: [
                _i8.RouteConfig(
                  ProductListRoute.name,
                  path: '',
                  parent: ProductRoute.name,
                ),
                _i8.RouteConfig(
                  ProductDetailRoute.name,
                  path: '',
                  parent: ProductRoute.name,
                  meta: <String, dynamic>{'hideBottomNav': true},
                ),
              ],
            ),
            _i8.RouteConfig(
              CartRoute.name,
              path: 'cart',
              parent: BottomNavRoute.name,
              children: [
                _i8.RouteConfig(
                  ShoppingCartRoute.name,
                  path: '',
                  parent: CartRoute.name,
                )
              ],
            ),
            _i8.RouteConfig(
              UserRoute.name,
              path: 'profile',
              parent: BottomNavRoute.name,
              children: [
                _i8.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: UserRoute.name,
                )
              ],
            ),
          ],
        ),
        _i8.RouteConfig(
          SignupRoute.name,
          path: '/signup',
        ),
      ];
}

/// generated route for
/// [_i1.BottomNavBar]
class BottomNavRoute extends _i8.PageRouteInfo<void> {
  const BottomNavRoute({List<_i8.PageRouteInfo>? children})
      : super(
          BottomNavRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BottomNavRoute';
}

/// generated route for
/// [_i2.SignupScreen]
class SignupRoute extends _i8.PageRouteInfo<void> {
  const SignupRoute()
      : super(
          SignupRoute.name,
          path: '/signup',
        );

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ProductRoute extends _i8.PageRouteInfo<void> {
  const ProductRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProductRoute.name,
          path: 'product',
          initialChildren: children,
        );

  static const String name = 'ProductRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class CartRoute extends _i8.PageRouteInfo<void> {
  const CartRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          path: 'cart',
          initialChildren: children,
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class UserRoute extends _i8.PageRouteInfo<void> {
  const UserRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'UserRoute';
}

/// generated route for
/// [_i4.ProductListScreen]
class ProductListRoute extends _i8.PageRouteInfo<void> {
  const ProductListRoute()
      : super(
          ProductListRoute.name,
          path: '',
        );

  static const String name = 'ProductListRoute';
}

/// generated route for
/// [_i5.ProductDetailScreen]
class ProductDetailRoute extends _i8.PageRouteInfo<void> {
  const ProductDetailRoute()
      : super(
          ProductDetailRoute.name,
          path: '',
        );

  static const String name = 'ProductDetailRoute';
}

/// generated route for
/// [_i6.ShoppingCartScreen]
class ShoppingCartRoute extends _i8.PageRouteInfo<void> {
  const ShoppingCartRoute()
      : super(
          ShoppingCartRoute.name,
          path: '',
        );

  static const String name = 'ShoppingCartRoute';
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}
