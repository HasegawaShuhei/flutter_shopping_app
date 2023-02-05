import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/constants/number.dart';
import '../../../../features/product/providers/products_notifier.dart';

final productListScreenControllerProvider =
    Provider<ProductListScreenController>(ProductListScreenController.new);

class ProductListScreenController {
  ProductListScreenController(this._ref) {
    _initializeScrollController();
  }
  final Ref _ref;
  ProductsNotifier get _notifer => _ref.read(productsNotifierProvider.notifier);

  late final ScrollController scrollController;

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
