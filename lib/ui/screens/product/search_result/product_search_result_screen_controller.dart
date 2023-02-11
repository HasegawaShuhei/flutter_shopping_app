import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/constants/number.dart';
import '../../../../features/product/providers/search_product_query.dart';
import '../../../../features/product/providers/search_products_notifier.dart';

final productSearchResultScreenControllerProvider =
    Provider<ProductSearchResultScreenController>(
  ProductSearchResultScreenController.new,
);

class ProductSearchResultScreenController {
  ProductSearchResultScreenController(this._ref) {
    _initializeControllers();
    _ref.onDispose(_disposeTextController);
  }
  final Ref _ref;
  SearchProductsNotifier get _notifer =>
      _ref.read(searchProductsNotifierProvider.notifier);

  late final ScrollController scrollController;
  late final TextEditingController searchQueryController;

  void _initializeControllers() {
    scrollController = ScrollController()
      ..addListener(() async {
        final scrollValue =
            scrollController.offset / scrollController.position.maxScrollExtent;
        if (scrollValue > scrollValueThreshold) {
          await _notifer.loadMore();
        }
      });
    searchQueryController = TextEditingController();
    searchQueryController.text = _ref.read(searchProductQueryProvider);
  }

  void _disposeTextController() {
    searchQueryController.dispose();
  }
}
