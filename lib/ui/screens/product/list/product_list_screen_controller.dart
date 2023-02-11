import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/constants/number.dart';
import '../../../../core/routing/app_router.gr.dart';
import '../../../../features/product/providers/products_notifier.dart';
import '../../../../features/product/providers/search_product_query.dart';

final productListScreenControllerProvider =
    Provider<ProductListScreenController>(ProductListScreenController.new);

class ProductListScreenController {
  ProductListScreenController(this._ref) {
    _initializeScrollController();
  }
  final Ref _ref;
  ProductsNotifier get _notifer => _ref.read(productsNotifierProvider.notifier);

  late final ScrollController scrollController;

  Future<void> onTapSearchBar({required BuildContext context}) async {
    /// rootの商品画面から検索する際は検索ワードをリセットする
    _ref.read(searchProductQueryProvider.notifier).update((_) => '');
    await context.router.push(const ProductSearchRoute());
  }

  void _initializeScrollController() {
    scrollController = ScrollController()
      ..addListener(() async {
        final scrollValue =
            scrollController.offset / scrollController.position.maxScrollExtent;
        if (scrollValue > scrollValueThreshold) {
          await _notifer.loadMore();
        }
      });
  }
}
