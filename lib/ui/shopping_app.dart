import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/providers/error.dart';
import '../core/routing/app_router.dart';
import '../core/routing/router_observer.dart';
import '../core/styles/app_theme_data.dart';
import '../core/utils/scaffold_messenger.dart';
import '../features/config/providers/theme_selector_provider.dart';

class ShoppingApp extends HookConsumerWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final scaffoldMessengerKey = ref.watch(scaffoldMessengerKeyProvider);

    /// エラーが発生した際にsnackBarを表示する
    ref.listen<Exception?>(errorProvider, (_, state) {
      if (state == null) {
        return;
      }
      ref.read(scaffoldMessengerServiceProvider).showSnackBarByException(state);
    });

    return MaterialApp.router(
      scaffoldMessengerKey: scaffoldMessengerKey,
      routerDelegate: appRouter.delegate(
        navigatorObservers: () => [RouterObserver()],
      ),
      routeInformationParser: appRouter.defaultRouteParser(),
      title: 'Flutter Shopping App',
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.light(),
      darkTheme: AppThemeData.dark(),
      themeMode: ref.watch(themeSelectorNotifierProvider),
    );
  }
}
