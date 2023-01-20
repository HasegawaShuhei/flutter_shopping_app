import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/app_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ベーシックなBNBのように画面遷移時にBNBを消したい場合はrouteにmeta: <String, dynamic>{'hideBottomNav': true}を追加して、view側でflagをもとに表示非表示を切り替える
    // final hideBottomNav = context.topRouteMatch.meta['hideBottomNav'] == true;
    // AnimatedOpacity(opacity: hideBottomNav ? 0 : 1, duration: const Duration(milliseconds: 100));
    return AutoTabsRouter(
      routes: const [
        ProductsRoute(),
        CartRoute(),
        ProfileRoute(),
      ],
      builder: (context, child, _) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: context.tabsRouter.activeIndex,
            onTap: (index) => _onTap(context, index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: 'Products',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }

  void _onTap(BuildContext context, int index) {
    // タブを押したら、そのタブのルートに遷移したいとき
    if (index == 0) {
      context.router
          .navigate(const BottomNavRoute(children: [ProductsRoute()]));
    }
    context.tabsRouter.setActiveIndex(index);
  }
}
