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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import '../../features/cart/ui/shopping_cart/shopping_cart_screen.dart' as _i5;
import '../../features/product/ui/detail/product_detail_screen.dart' as _i4;
import '../../features/product/ui/list/product_list_screen.dart' as _i3;
import '../../features/root/ui/root_screen.dart' as _i1;
import '../../features/user/ui/profile/profile_page.dart' as _i6;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    BottomNavRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i1.BottomNavBar(),
      );
    },
    ProductsRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ProductListRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.ProductListScreen(),
      );
    },
    ProductDetailRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i4.ProductDetailScreen(),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i5.ShoppingCartScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i6.ProfileScreen(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          BottomNavRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              ProductsRoute.name,
              path: 'products',
              parent: BottomNavRoute.name,
              children: [
                _i7.RouteConfig(
                  ProductListRoute.name,
                  path: '',
                  parent: ProductsRoute.name,
                ),
                _i7.RouteConfig(
                  ProductDetailRoute.name,
                  path: '',
                  parent: ProductsRoute.name,
                  meta: <String, dynamic>{'hideBottomNav': true},
                ),
              ],
            ),
            _i7.RouteConfig(
              CartRoute.name,
              path: 'cart',
              parent: BottomNavRoute.name,
              children: [
                _i7.RouteConfig(
                  ShoppingCartRoute.name,
                  path: '',
                  parent: CartRoute.name,
                )
              ],
            ),
            _i7.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: BottomNavRoute.name,
              children: [
                _i7.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                )
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.BottomNavBar]
class BottomNavRoute extends _i7.PageRouteInfo<void> {
  const BottomNavRoute({List<_i7.PageRouteInfo>? children})
      : super(
          BottomNavRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BottomNavRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProductsRoute extends _i7.PageRouteInfo<void> {
  const ProductsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProductsRoute.name,
          path: 'products',
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CartRoute extends _i7.PageRouteInfo<void> {
  const CartRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          path: 'cart',
          initialChildren: children,
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i3.ProductListScreen]
class ProductListRoute extends _i7.PageRouteInfo<void> {
  const ProductListRoute()
      : super(
          ProductListRoute.name,
          path: '',
        );

  static const String name = 'ProductListRoute';
}

/// generated route for
/// [_i4.ProductDetailScreen]
class ProductDetailRoute extends _i7.PageRouteInfo<void> {
  const ProductDetailRoute()
      : super(
          ProductDetailRoute.name,
          path: '',
        );

  static const String name = 'ProductDetailRoute';
}

/// generated route for
/// [_i5.ShoppingCartScreen]
class ShoppingCartRoute extends _i7.PageRouteInfo<void> {
  const ShoppingCartRoute()
      : super(
          ShoppingCartRoute.name,
          path: '',
        );

  static const String name = 'ShoppingCartRoute';
}

/// generated route for
/// [_i6.ProfileScreen]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}
